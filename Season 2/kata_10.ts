import { MORSE_CODE } from './preloaded';
export function decodeMorse(morseCode: string): string {
  return morseCode
           .trim()
           .split(/\s{3}/)
           .map( (word) => word.split(" ").map( (char) => MORSE_CODE[char]).join("") )
           .join(" ")

}