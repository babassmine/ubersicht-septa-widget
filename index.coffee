command: "curl -s 'http://www3.septa.org/hackathon/NextToArrive/Suburban%20Station/Lansdowne/10'"

refreshFrequency: 600000

style: """
margin-top: 20%
margin-left: 20%

"""

render: (output) -> """
<div id='septa'>
<h1>Septa Regional Rail</h1>
<h1 id='a2b'></h1>
<h1 id='b2a'></h1>
</div>
"""

update: (output, domEl) -> 
	$(domEl).find('.septa').html(output)
