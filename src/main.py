import argparse

def main():
    """Greets the user by name."""
    parser = argparse.ArgumentParser(description="A simple greeter app.")
    parser.add_argument("name", type=str, help="The name to greet.")
    args = parser.parse_args()

    print(f"Hello, {args.name}!")

if __name__ == "__main__":
    main()