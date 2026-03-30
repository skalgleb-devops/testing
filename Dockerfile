# Use the tiny Alpine image
FROM alpine:3.18

# Install Python and Pytest
RUN apk add --no-cache python3 py3-pip curl && \
    pip install pytest --break-system-packages

# Set the working directory inside the container
WORKDIR /app

# Copy your files from your ThinkPad into the container
COPY app.py test_app.py ./

# This command runs the tests when the container starts
CMD ["pytest"]
