import fsAll from 'fs'
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  const sortedRepos = Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    // .filter(([_repoName, cfg]) => !cfg.noSync) // eslint-disable-line @typescript-eslint/no-unused-vars
    .map(([repoName]) => `'${repoName}',`)
  const src = `name: Rebuild Calculators
on:
  workflow_dispatch:
jobs:
  trigger:
    name: Trigger Rebuilds
    runs-on: ubuntu-latest
    strategy:
      matrix:
        target_repo: [
          ${sortedRepos.join('\n          ')}
        ]

    steps:
      - run: >
          curl -X POST \\
            -H "Accept: application/vnd.github+json" \\
            -H "Authorization: Bearer \${{secrets.E2GBOT_PAT}}" \\
            https://api.github.com/repos/e2grnd/\${{ matrix.target_repo }}/dispatches \\
            -d '{"event_type":"rebuild-calculator"}'

`
  await fs.mkdir('etc', {recursive: true})
  await fs.writeFile('etc/rebuild_calculators.yaml', src)
}

run()
