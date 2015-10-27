command: "curl -s 'http://www3.septa.org/hackathon/NextToArrive/Suburban%20Station/Lansdowne/10'"

refreshFrequency: 600000

style: """
margin-top: 10%
margin-left: 50%

"""

render: (output) -> """
<div id='septa'>
<h1>Septa Regional Rail</h1>
<h1 id='a2b'>Suburban To Lansdowne</h1>
<div id='schedule1'>
<h2 id='train_no'></h2>
<h2 id='line'></h2>
<h2 id='depart'></h2>
<h2 id='delay'></h2>
</div>
<h1 id='b2a'></h1>
<div id='schedule2'>

</div>
</div>
"""

update: (output, domEl) ->

    $domEl = $(domEl)
    $response = $($.parseJSON(output))
    $domEl.find('#train_no').html($response[0].orig_train)
    $domEl.find('#line').html($response[0].orig_line)
    $domEl.find('#depart').html($response[0].orig_departure_time)
    $domEl.find('#delay').html($response[0].orig_delay)
