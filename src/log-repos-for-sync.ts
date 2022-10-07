import {calculators} from './calculators'

async function run(): Promise<void> {
  const arr = Object.entries(calculators)
    .sort((a, b) => {
      return a[0].localeCompare(b[0])
    })
    .map(([repoName]) => {
      return repoName
    })
  // eslint-disable-next-line no-console
  console.log(arr)
}

run()
