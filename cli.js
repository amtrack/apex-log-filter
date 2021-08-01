#!/usr/bin/env node

import { readFileSync } from "fs";
import { filterApexLogs } from "./index.js";

const input = readFileSync(0, "utf8");
console.log(filterApexLogs(input));
