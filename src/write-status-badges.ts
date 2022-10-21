import fsAll from 'fs'
/* eslint-disable github/array-foreach */
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  let md = `# Calculator Repo Publish Action Status


| Service | Repo | Dev | Stage | Prod | 
| ------- | ---- | --- | ----- | ---- |
  `
  Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += `| ${calcConfig.serviceName}`
      md += ` | [${repoName}](https://github.com/e2grnd/${repoName})`
      md += ` | [![${calcConfig.serviceName}](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fdev)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
      md += ` | [![${calcConfig.serviceName}](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fstage)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
      md += ` | [![${calcConfig.serviceName}](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg?branch=release%2Fprod)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)`
      md += ' | \n'
    })
  await fs.writeFile('status.md', md)
}

run()
