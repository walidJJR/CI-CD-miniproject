from setuptools import setup, find_packages

setup(
    name="mini-groq-app",  # Nom de votre application
    version="0.1",
    packages=find_packages(),  # Trouver automatiquement tous les packages
    install_requires=[
        "fastapi",
        "uvicorn",
        "groq",
        "httpx",
        "pydantic",
    ],
)
