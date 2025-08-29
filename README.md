# Hermes

A Python project built with OpenAI Agents SDK and Playwright for web automation and AI-powered interactions.

## Features

- OpenAI Agents SDK integration
- Web automation with Playwright and Chromium
- Docker containerization for easy deployment
- Poetry-based dependency management

## Prerequisites

- Python 3.11+
- Poetry (for dependency management)
- Docker (optional, for containerized deployment)

## Installation

### Using Poetry (Recommended)

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd hermes
   ```

2. Install dependencies:
   ```bash
   poetry install --no-root
   ```

3. Install Playwright browsers:
   ```bash
   poetry run playwright install chromium
   ```

### Using Docker

1. Build the Docker image:
   ```bash
   docker build -t hermes .
   ```

2. Run the container:
   ```bash
   docker run -it hermes
   ```

## Usage

### Local Development

Run the application locally:
```bash
poetry run python main.py
```

### Docker

Run the containerized application:
```bash
docker run -it hermes
```

## Configuration

The project uses `pyproject.toml` for configuration with package mode disabled for dependency-only management.

## Project Structure

```
hermes/
├── Dockerfile          # Docker configuration
├── main.py            # Main application entry point
├── pyproject.toml     # Project configuration and dependencies
└── README.md          # This file
```

## Dependencies

- **openai-agents-sdk**: OpenAI Agents SDK for AI interactions
- **playwright**: Web automation framework
- **Python 3.11**: Base Python runtime

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

[Add your license information here]

## Support

For questions or issues, please [create an issue](link-to-issues) or contact the maintainers.
