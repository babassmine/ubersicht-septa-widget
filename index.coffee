command: "curl -s 'http://www3.septa.org/hackathon/NextToArrive/Suburban%20Station/Lansdowne/10'"

refreshFrequency: 600000

style: """
    margin-top: 30%
    margin-left: 50%
    font-family: Helvetica Neue
    color: #ff0000
    padding 5px
    h1
        font-size: 20px
        text-transform: uppercase
        text-align: center
        opacity: 0.75
    h2
        font-size: 14px
        text-transform: uppercase
        margin: 2.5px
        padding: 2.5px
    #a2b
        color: #0000FF
        font-size: 16px

    #container *
        display: inline-block

    .schedule1
        float: right

"""

render: (output) -> """
<div id='septa'>
    <div id="container">
    <img src="septa.widget/septa.png" style="center">
    </div>
    <h1 id='a2b'>Suburban To Lansdowne</h1>
    <div id='schedule1'>
        <div id="container">
            <span>Train No.</span>
            <h2 id='train_no'></h2>
        </div>
        <div id="container">
            <h2>Line</h2>
            <h2 id='line'></h2>
        </div>
        <div id="container">
            <h2>Departs</h2>
            <h2 id='depart'></h2>
        </div>
        <div id="container">
            <h2>Delay</h2>
            <h2 id='delay'></h2>
        </div>
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
