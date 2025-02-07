import fsAll from 'node:fs'
import { calculators } from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  await fs.mkdir('etc', { recursive: true })
  await fs.writeFile('dist/calculators.json', JSON.stringify(calculators, null, 2))
}

run()
