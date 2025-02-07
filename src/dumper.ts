/* eslint-disable no-console */
import { calculators } from './calculators'

console.log(
  Object.entries(calculators)
    .sort(([a], [b]) => a.localeCompare(b))
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    .map(([_, entry]) => `${entry.imageName} \\`)
    .join('\n'),
)
