import json
import sys
import os

def main():
    # Use relative path from script location (dev/) to spec file (priv/openapi/openapi.json)
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    spec_path = os.path.join(project_root, "priv/openapi/openapi.json")
    
    print(f"Reading spec from: {spec_path}")

    try:
        with open(spec_path, "r") as f:
            spec = json.load(f)
            
            # Example: Find a schema to dump.
            # You can modify this part to dump specific schemas or properties as needed.
            # For now, let's just list the available schemas to help the user get started.
            schemas = spec.get("components", {}).get("schemas", {})
            print(f"Found {len(schemas)} schemas.")
            print("Available schemas (first 10):")
            for name in list(schemas.keys())[:10]:
                print(f" - {name}")
            
            # Specific schemas to investigate from audit findings
            targets = ["Customer", "BenefitCreate"]
            for target in targets:
                # Find the schema (case-insensitively potentially, but exact match first)
                target_schema = None
                for name, s in schemas.items():
                    if name.lower() == target.lower():
                        target_schema = s
                        print(f"\nSchema for '{name}':")
                        print(json.dumps(target_schema, indent=2))
                        break
                
                if not target_schema:
                    print(f"\nSchema '{target}' not found.")
            
    except FileNotFoundError:
         print(f"Error: Spec file not found at {spec_path}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
