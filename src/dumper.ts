/* eslint-disable no-console */
import {calculators} from './calculators'

console.log(
  Object.keys(calculators)
    .sort((a, b) => a.localeCompare(b))
    .map(repoName => `e2grnd/${repoName}@release/dev`)
    .join('\n')
)
