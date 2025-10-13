FROM continuumio/miniconda3:latest

# Set working directory
WORKDIR /app

# Copy environment file
COPY environment.yml .

# Create the conda environment
RUN conda env create -f environment.yml

# Make RUN commands use the conda environment
SHELL ["conda", "run", "-n", "greeter-env", "/bin/bash", "-c"]

# Copy our source code
COPY src/ ./src/

# Define the command to run our app
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "greeter-env", "python", "src/main.py"]