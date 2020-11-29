# apex-log-filter

> CLI for filtering USER_DEBUG output from Salesforce Anonymous Apex execution logs

[![Actions Status](https://github.com/amtrack/apex-log-filter/workflows/Test%20and%20Release/badge.svg)](https://github.com/amtrack/apex-log-filter/actions)

Unlike a simple `grep '|USER_DEBUG|'` this supports multi-line messages.

<table>
<tr><th>full</th><th>filtered</th></tr>
<tr>
<td>
<pre>
Compiled successfully.
Executed successfully.

48.0 APEX_CODE,DEBUG;APEX_PROFILING,INFO
Execute Anonymous: System.debug('Hello World\nThis is a debug message.');
04:25:21.21 (21632799)|EXECUTION_STARTED
04:25:21.21 (21650642)|CODE_UNIT_STARTED|[EXTERNAL]|execute_anonymous_apex
04:25:21.21 (22596799)|USER_DEBUG|[1]|DEBUG|Hello World
This is a debug message.
04:25:21.23 (23123489)|CUMULATIVE_LIMIT_USAGE
04:25:21.23 (23123489)|LIMIT_USAGE_FOR_NS|(default)|
Number of SOQL queries: 0 out of 100
Number of query rows: 0 out of 50000
Number of SOSL queries: 0 out of 20
Number of DML statements: 0 out of 150
Number of DML rows: 0 out of 10000
Maximum CPU time: 0 out of 10000
Maximum heap size: 0 out of 6000000
Number of callouts: 0 out of 100
Number of Email Invocations: 0 out of 10
Number of future calls: 0 out of 50
Number of queueable jobs added to the queue: 0 out of 50
Number of Mobile Apex push calls: 0 out of 10

04:25:21.23 (23123489)|CUMULATIVE_LIMIT_USAGE_END

04:25:21.21 (23171269)|CODE_UNIT_FINISHED|execute_anonymous_apex
04:25:21.21 (25341413)|EXECUTION_FINISHED

</pre>
</td>
<td>
<pre>
Hello World!
This is a debug message.
</pre>
</td>
</tr>
</table>

## Installation

```console
$ npm install -g apex-log-filter
```

## Usage

```console
$ sfdx force:apex:execute -f hello-word.apex | apex-log-filter
Hello World!
This is a debug message.
```

## Sponsors

- [IPfolio](https://www.ipfolio.com)

## License

MIT © [Matthias Rolke](mailto:mr.amtrack@gmail.com)
