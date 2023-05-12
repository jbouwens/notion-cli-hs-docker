\`\`\`
# Notion CLI Dockerized

This repository contains a Dockerized version of the Notion CLI, designed to interact with the Notion API.

## Requirements
- Docker
- Docker Compose

## Usage
1. Clone the repository: `git clone https://github.com/jbouwens/notion-cli-hs-dockerized`.
2. Navigate to the repository's directory: `cd notion-cli-hs-dockerized`.

To run Notion CLI commands, use Docker Compose. For example:
`docker-compose run --rm notion-cli-hs notion-cli upload --database-uuid abc321 --record-title pinogon /data/test.gif`

The file must exist in the `notion-cli-hs-dockerized\data` dir.
