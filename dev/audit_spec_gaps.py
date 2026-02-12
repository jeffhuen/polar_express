import json
import sys
import os

def audit_schema(data, path=""):
    findings = []
    
    if isinstance(data, dict):
        # Check for dynamic map: additionalProperties != false
        if "type" in data and data["type"] == "object":
            if "properties" not in data and "additionalProperties" not in data:
                 findings.append(f"Generic Object (no props, implicit dynamic): {path}")
            elif "additionalProperties" in data and data["additionalProperties"] is not False:
                 findings.append(f"Dynamic Map (additionalProperties): {path}")

        # Check for polymorphism
        if "oneOf" in data:
            findings.append(f"Polymorphism (oneOf): {path}")
        if "anyOf" in data:
            findings.append(f"Polymorphism (anyOf): {path}")
        
        # Check for untyped array
        if "type" in data and data["type"] == "array":
            if "items" not in data or data["items"] == {}:
                findings.append(f"Untyped Array: {path}")

        # Recurse
        for k, v in data.items():
            new_path = f"{path}.{k}" if path else k
            findings.extend(audit_schema(v, new_path))
            
    elif isinstance(data, list):
        for i, item in enumerate(data):
            findings.extend(audit_schema(item, f"{path}[{i}]"))
            
    return findings

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    # Correct path for polar_express spec
    spec_path = os.path.join(project_root, "priv/openapi/openapi.json")
    
    print(f"Auditing spec: {spec_path}")

    try:
        with open(spec_path, "r") as f:
            spec = json.load(f)
            findings = audit_schema(spec)
            
            print(f"Total findings: {len(findings)}")
            print("-" * 40)
            # Group by type of finding
            grouped = {}
            for f in findings:
                type_name = f.split(":")[0]
                if type_name not in grouped:
                    grouped[type_name] = []
                grouped[type_name].append(f)
            
            for type_name, items in grouped.items():
                print(f"\n### {type_name} ({len(items)})")
                # Show first 5 examples
                for item in items[:5]:
                    print(f"  - {item}")
                if len(items) > 5:
                    print(f"  ... and {len(items) - 5} more")

    except FileNotFoundError:
        print(f"Error: Spec file not found at {spec_path}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
