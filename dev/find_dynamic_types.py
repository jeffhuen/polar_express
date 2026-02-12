import json
import sys
import os

def find_additional_properties(data, path=""):
    if isinstance(data, dict):
        for k, v in data.items():
            new_path = f"{path}.{k}" if path else k
            if k == "additionalProperties":
                if v is not False:
                    print(f"Found dynamic map at: {path}")
                    print(f"Value: {json.dumps(v, indent=2)}")
                    print("-" * 40)
            else:
                find_additional_properties(v, new_path)
    elif isinstance(data, list):
        for i, item in enumerate(data):
            find_additional_properties(item, f"{path}[{i}]")

def main():
    # Use relative path from script location (dev/) to spec file (priv/openapi/openapi.json)
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(script_dir)
    spec_path = os.path.join(project_root, "priv/openapi/openapi.json")
    
    print(f"Reading spec from: {spec_path}")

    try:
        with open(spec_path, "r") as f:
            spec = json.load(f)
            find_additional_properties(spec)
    except FileNotFoundError:
        print(f"Error: Spec file not found at {spec_path}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
