import fsAll from 'fs'
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  const sortedCalcs = Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .filter(([_repoName, cfg]) => !cfg.noSync) // eslint-disable-line @typescript-eslint/no-unused-vars
  const standardCalcRepos = sortedCalcs
    .filter(([_repoName, cfg]) => !cfg.enableBayesContainers) // eslint-disable-line @typescript-eslint/no-unused-vars
    .map(([repoName]) => `e2grnd/${repoName}@release/dev`)
  const standardReposChunk = `  - repos: |
      e2grnd/calculator-template@release/dev
      ${standardCalcRepos.join('\n      ')}
    files: 
      - source: workflows/publish.yml
        dest: .github/workflows/publish.yml
      # - source: workflows/test.yml
      #  dest: .github/workflows/test.yml
      - source: devcontainer/docker-compose.yaml
        dest: .devcontainer/docker-compose.yaml
      - source: devcontainer/docker-compose.app.yaml
        dest: .devcontainer/docker-compose.app.yaml
      - source: devcontainer/devcontainer.json
        dest: .devcontainer/devcontainer.json
      - source: devcontainer/scripts/init.mjs
        dest: .devcontainer/scripts/init.mjs
      - source: devcontainer/init_db.sh
        dest: .devcontainer/init_db.sh
      - source: devcontainer/otel-collector-config.yaml
        dest: .devcontainer/otel-collector-config.yaml
      - source: devcontainer/gitattributes
        dest: .devcontainer/.gitattributes
      - source: devcontainer/gitignore
        dest: .devcontainer/.gitignore
      - source: HELP.md
        dest: HELP.md
      - source: subscribe.sh
        dest: subscribe.sh
`
  const bayesCalcRepos = sortedCalcs
    .filter(([_repoName, cfg]) => cfg.enableBayesContainers) // eslint-disable-line @typescript-eslint/no-unused-vars
    .map(([repoName]) => `e2grnd/${repoName}@release/dev`)
  const bayesReposChunk = `  - repos: |
      ${bayesCalcRepos.join('\n      ')}
    files: 
      - source: workflows/publish.yml
        dest: .github/workflows/publish.yml
      # - source: workflows/test.yml
      #   dest: .github/workflows/test.yml
      - source: devcontainer/docker-compose.yaml
        dest: .devcontainer/docker-compose.yaml
      - source: devcontainer/docker-compose.bayes.yaml
        dest: .devcontainer/docker-compose.bayes.yaml
      - source: devcontainer/docker-compose.app.yaml
        dest: .devcontainer/docker-compose.app.yaml
      - source: devcontainer/devcontainer.bayes.json
        dest: .devcontainer/devcontainer.json
      - source: devcontainer/scripts/init.mjs
        dest: .devcontainer/scripts/init.mjs
      - source: devcontainer/otel-collector-config.yaml
        dest: .devcontainer/otel-collector-config.yaml
      - source: devcontainer/init_db.sh
        dest: .devcontainer/init_db.sh
      - source: devcontainer/gitattributes
        dest: .devcontainer/.gitattributes
      - source: devcontainer/gitignore
        dest: .devcontainer/.gitignore
      - source: HELP.md
        dest: HELP.md
      - source: subscribe.sh
        dest: subscribe.sh
  `
  const src = `group:
${standardReposChunk}
${bayesReposChunk}`
  await fs.mkdir('etc', {recursive: true})
  await fs.writeFile('etc/repo-sync-config.yaml', src)
}

run()
