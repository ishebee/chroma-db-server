FROM python:3.10

WORKDIR /app

# Install required dependencies
RUN pip install --no-cache-dir chromadb

# Expose ChromaDB on port 8000
EXPOSE 8000

# Run the ChromaDB server directly
CMD ["chromadb", "run", "--host", "0.0.0.0", "--port", "8000"]
