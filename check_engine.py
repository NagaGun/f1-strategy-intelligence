import sys

def check_status():
    print(f"---F1 Strategy Intelligence Status---")
    print(f"Pyhton Version: {sys.version.split()[0]}")
    print(f"Virtual Env Activate: {hasattr(sys, 'real_prefix') or (sys.base_prefix != sys.prefix)}")
    print(f"-----------------------")

if __name__ == "__main__":
    check_status()