Class {
	#name : #FireOps2015Survey,
	#superclass : #Object,
	#category : 'SurveyMonkey'
}

{ #category : #responses }
FireOps2015Survey class >> compileResponseAs: selector [
	"self compileResponseAs: #surveyJSON"
	
	self class compile: selector, '

	^ ', Clipboard clipboardText asString printString
	classified: 'responses'
]

{ #category : #'as yet unclassified' }
FireOps2015Survey class >> questions [
 
	| questionDicts result |
	questionDicts := ((self survey at: 'data') at: 'pages') first at: 'questions'.
	result := questionDicts collect: [ :dict | SurveyMonkeyQuestion newFrom: dict ].
	^ result sort: [ :a :b | a position < b position ]
]

{ #category : #responses }
FireOps2015Survey class >> respondentsJSON [

	^ '{
  "status": 0,
  "data": {
    "respondents": [
      {
        "respondent_id": "4266946378"
      },
      {
        "respondent_id": "4266748590"
      },
      {
        "respondent_id": "4265804906"
      },
      {
        "respondent_id": "4265749224"
      },
      {
        "respondent_id": "4265562288"
      },
      {
        "respondent_id": "4265345535"
      },
      {
        "respondent_id": "4265321321"
      },
      {
        "respondent_id": "4265290651"
      },
      {
        "respondent_id": "4265288174"
      },
      {
        "respondent_id": "4254589769"
      },
      {
        "respondent_id": "4250332586"
      },
      {
        "respondent_id": "4249454804"
      },
      {
        "respondent_id": "4249299543"
      },
      {
        "respondent_id": "4246071509"
      },
      {
        "respondent_id": "4246054392"
      },
      {
        "respondent_id": "4246051493"
      },
      {
        "respondent_id": "4246003813"
      },
      {
        "respondent_id": "4245996935"
      },
      {
        "respondent_id": "4242227210"
      },
      {
        "respondent_id": "4242108209"
      },
      {
        "respondent_id": "4241266831"
      },
      {
        "respondent_id": "4240550533"
      },
      {
        "respondent_id": "4239349081"
      },
      {
        "respondent_id": "4237796095"
      },
      {
        "respondent_id": "4237676512"
      },
      {
        "respondent_id": "4237449609"
      }
    ],
    "page": 1,
    "page_size": 1000
  }
}'
]

{ #category : #'as yet unclassified' }
FireOps2015Survey class >> responses [
	| json responseDicts |
	json := NeoJSONReader fromString: self responsesJSON.
	responseDicts := json at: 'data'.
	responseDicts collect: [ :resp |
		FireOps2015Survey questions collect: [ :quest |
			resp detect: [ :e | e questionId = quest questionId ]
		 ] ]
	"^ dicts collect: [ :e | e at: 'questions' ]"
]

{ #category : #responses }
FireOps2015Survey class >> responsesJSON [

	^ '{
  "status": 0,
  "data": [
    {
      "respondent_id": "4266946378",
      "questions": [
        {
          "answers": [
            {
              "text": "the reason it was taking place",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "members helping during drills",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "about how well yonkers done",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "our men helped to much with the evolutions",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "city hall didnt feel the lack of manpower",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "frank vallelonga",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4266748590",
      "questions": [
        {
          "answers": [
            {
              "text": "Response from the politicians ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "The bs between some of the unions and some of the Chiefs.",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "How dangerous and hard our job is",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Nrfd \"babied\" NR politicians",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Make sure all designated staff for the event gets a t shirt. Those on the field did not.",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265804906",
      "questions": [
        {
          "answers": [
            {
              "text": "Membership banding together for an event aimed to benefit the future of our jobs. A+",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Overall, good feedback. Possibly, too much assistance from members towards administration.",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Thank you, to all who organized and took time out of their hectic schedules to get this project off the ground. Regardless if I feel that Fire Ops will persuade council to make better decisions regarding our department or not, I do feel that every bit counts. Great job!",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326139"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Frank Gagliardo",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265749224",
      "questions": [
        {
          "answers": [
            {
              "text": "Seeing the politicians perform the evolutions.",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Not being able to get more involved.",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "All that attended appreciate what we do a little more.",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Nothing.",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Ted Ferrara",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265562288",
      "questions": [
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        }
      ]
    },
    {
      "respondent_id": "4265345535",
      "questions": [
        {
          "answers": [
            {
              "text": "Face to face with politicians",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Too much info for them to take in",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326139"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "text": "Biondi",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265321321",
      "questions": [
        {
          "answers": [
            {
              "text": "The food. The  the attendance by city,County and sate officials",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "The food. Can''t  think of anything bad",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "The eye opening experiences from city council, and mayor on the difficulties  associated with the job",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "That this won''t  make a bit of difference within the city''s  eyes",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Next time better communications and pre planning for practice events leading up to the actual event.  Need more notice to increase attendance ",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Greg Rigos",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265290651",
      "questions": [
        {
          "answers": [
            {
              "text": "Don''t know",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "I don''t know",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "Not much",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Yonkers was the only ones who did it the right way.",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "I did not attend either event 2 sq. on duty. Depending on the answer to number 7 should determine #8",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326139"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "text": "Anthony Mancuso",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4265288174",
      "questions": [
        {
          "answers": [
            {
              "text": "Every station ran smoothly",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Yonkers ",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "The mayor and other council members postings on social media ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "None",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326136"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Bongo",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4254589769",
      "questions": [
        {
          "answers": [
            {
              "text": "giving our politicians an inside look, showing them its not something anyone can do",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "that it was successful ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "rj richards",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356632"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4250332586",
      "questions": [
        {
          "answers": [
            {
              "text": "The level of participation ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "N/A",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "The political guests talked about their misunderstanding of how difficult the job really is. ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "That we helped our political guests to much. An opinion I Do Not Sure!",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "I believe the event was run exceptionally well. The political guests were treated fairly. And future events could only get better!!",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "John Schroeder ",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4249454804",
      "questions": [
        {
          "answers": [
            {
              "text": "Good turn out for help",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Not every council member participated...or at the very least attended to spectate",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "That the participants seemed to be impressed with the labor intensity involved in these evolutions which hopefully translates to a better understanding for the minimum requirements needed ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Didn''t hear any.....",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Think this was better that any money ever spent on a pr firm ??",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Simon mobiglia",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4249299543",
      "questions": [
        {
          "answers": [
            {
              "text": "Dialogue w/ politicians",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "no glaring negatives",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "well run, well thought-out",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "not enough for guys to do",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Well done - lot of coordinating - may or may not influence participating politicians next time they decide on FF issues - hopefully it will",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Andy Sandor",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356632"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4246071509",
      "questions": [
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326139"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4246054392",
      "questions": [
        {
          "answers": [
            {
              "text": "The hands on work by the participants.  ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": " I think that today went excellently  ",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": " That it was well organized, and very effective in getting the message out.  ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": " That it was raining and I was gods well ",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": " I am very glad that I was in attendance   ",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326136"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Daniel Moxey",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4246051493",
      "questions": [
        {
          "answers": [
            {
              "text": "politicians realized our jobs were a lot harder than they thought",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4246003813",
      "questions": [
        {
          "answers": [
            {
              "text": "Stressed the importance of manpower",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Rain",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "Council members experienced first hand some of the most difficult tasks we fight to improve for our department.",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Ladder 12 being taken out of service for the event and some of the members assigned to that unit not acting appropriately.",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326138"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Ron Fraioli",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4245996935",
      "questions": [
        {
          "answers": [
            {
              "text": "Seeing all the brothers from New Rochelle step up and get the job done on their own steam",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Logistics - not planning out the radio / work distribution beforehand",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "If we''ve ever had a chance with the administration, this is it",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "The event was bullshit - Menzie",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "For the press, it seemed really important to tie into current events, like the storm, and Fire Prevention Month",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Sean D.",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356632"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4242227210",
      "questions": [
        {
          "answers": [
            {
              "text": "No drama. Everything went well for it being the first time New Ro did it.",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "We all agreed to be at one station and cover it for the day, we all did that except one.",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "Some counsel people said it was harder then they thought but enjoyed the experience.",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "None",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Maybe put their names on tape on their back or a better way to identify people for the photos. Goggles covered names on helmet too. ",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "TJ",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4242108209",
      "questions": [
        {
          "answers": [
            {
              "text": "brought everyone together ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "food",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "they realize what we do",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "didn''t hear anything",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "john robbins",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4241266831",
      "questions": [
        {
          "answers": [
            {
              "text": "Showed the politians what we do, that one of them couldn''t handle it and balled out!",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "That not all the invited politicians showed up.",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "That the experience of going through the motions put our jobs in better perspective",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "That unfortunetly nothing will come of this , like manpower , minimum manning , etc...",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Keep having them, open them up to as many loud mouth public figures that are willing to attend!",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326138"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4240550533",
      "questions": [
        {
          "answers": [
            {
              "text": "Having elected officials experience what firefighters really go through",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Not enough elected officials",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "The whole event was successful",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Nothing",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Thank you to all the brothers that were part of this.",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326139"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "row": "9463351715"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4239349081",
      "questions": [
        {
          "answers": [
            {
              "text": "4 cities with common goal",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Weather",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "Hope Noam gets it",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Hope Noam gets it",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Do another, wait till council changes or your just spinning your wheels with the same people",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326138"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        },
        {
          "answers": [
            {
              "text": "Steven Pappas",
              "row": "0"
            }
          ],
          "question_id": "858835472"
        },
        {
          "answers": [
            {
              "row": "9463351714"
            }
          ],
          "question_id": "858878456"
        },
        {
          "answers": [
            {
              "row": "9463356633"
            }
          ],
          "question_id": "858879103"
        }
      ]
    },
    {
      "respondent_id": "4237796095",
      "questions": [
        {
          "answers": [
            {
              "text": "Participation from all around ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Weather",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "How well organized it was",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Have not heard any negative ",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }', "9460326141 9460326138"
          '],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        }
      ]
    },
    {
      "respondent_id": "4237676512",
      "questions": [
        {
          "answers": [
            {
              "text": "The participation ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "Not having the politicians do the whole evolution. ",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "It was  informative ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "Nothing negative ",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "text": "Great job brothers. ",
              "row": "0"
            }
          ],
          "question_id": "858509078"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332187"
            }
          ],
          "question_id": "858510062"
        }
      ]
    },
    {
      "respondent_id": "4237449609",
      "questions": [
        {
          "answers": [
            {
              "text": "Being able to share what we do with the people who run the city ",
              "row": "0"
            }
          ],
          "question_id": "858508741"
        },
        {
          "answers": [
            {
              "text": "A negative attitude from some coworkers",
              "row": "0"
            }
          ],
          "question_id": "858508788"
        },
        {
          "answers": [
            {
              "text": "Reading the mayors web site ",
              "row": "0"
            }
          ],
          "question_id": "858508905"
        },
        {
          "answers": [
            {
              "text": "That politicians were babied to much. ",
              "row": "0"
            }
          ],
          "question_id": "858508957"
        },
        {
          "answers": [
            {
              "col": "9460326141",
              "row": "9460326137"
            }
          ],
          "question_id": "858509377"
        },
        {
          "answers": [
            {
              "row": "9460332186"
            }
          ],
          "question_id": "858510062"
        }
      ]
    }
  ]
}'
]

{ #category : #'as yet unclassified' }
FireOps2015Survey class >> survey [
	^ NeoJSONReader fromString: self surveyJSON
]

{ #category : #responses }
FireOps2015Survey class >> surveyJSON [

	^ '{
  "status": 0,
  "data": {
    "analysis_url": "https://www.surveymonkey.com/MySurvey_Responses.aspx?sm=hXH_2FBexZF_2FwXsvdtoNSil2HCN8mrEe7xqR45hZAOoLU_3D",
    "custom_variables": [],
    "title": {
      "text": "Fire Ops Critique",
      "enabled": true
    },
    "language_id": 1,
    "custom_variable_count": 0,
    "nickname": "",
    "pages": [
      {
        "page_id": "216789701",
        "sub_heading": null,
        "questions": [
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 3,
            "heading": "What was the best thing about the event?",
            "question_id": "858508741"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 4,
            "heading": "What was the worst thing about the event?",
            "question_id": "858508788"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 5,
            "heading": "What is the most positive feedback you''ve heard from others about the event?",
            "question_id": "858508905"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 6,
            "heading": "What is the most negative feedback you''ve heard from others about the event?",
            "question_id": "858508957"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 10,
            "heading": "Other comments",
            "question_id": "858509078"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "matrix"
            },
            "answers": [
              {
                "text": "Very Likely",
                "visible": true,
                "position": 1,
                "type": "row",
                "answer_id": "9460326136"
              },
              {
                "text": "Somewhat Likely",
                "visible": true,
                "position": 2,
                "type": "row",
                "answer_id": "9460326137"
              },
              {
                "text": "Neutral",
                "visible": true,
                "position": 3,
                "type": "row",
                "answer_id": "9460326138"
              },
              {
                "text": "Probably Not",
                "visible": true,
                "position": 4,
                "type": "row",
                "answer_id": "9460326139"
              },
              {
                "text": "Definitely Not",
                "visible": true,
                "position": 5,
                "type": "row",
                "answer_id": "9460326140"
              },
              {
                "text": "",
                "visible": true,
                "position": 1,
                "type": "col",
                "answer_id": "9460326141"
              }
            ],
            "position": 7,
            "heading": "How likely do you think the event will be to lead to better decisions by the administration?",
            "question_id": "858509377"
          },
          {
            "type": {
              "subtype": "vertical",
              "name": "",
              "family": "single_choice"
            },
            "answers": [
              {
                "text": "Yes",
                "visible": true,
                "position": 1,
                "type": "row",
                "answer_id": "9460332186"
              },
              {
                "text": "No",
                "visible": true,
                "position": 2,
                "type": "row",
                "answer_id": "9460332187"
              }
            ],
            "position": 8,
            "heading": "Do you think we should have more Fire Ops events in the future?",
            "question_id": "858510062"
          },
          {
            "type": {
              "subtype": "single",
              "name": "",
              "family": "open_ended"
            },
            "answers": [],
            "position": 1,
            "heading": "Your Name (optional, but helpful for follow-up)",
            "question_id": "858835472"
          },
          {
            "type": {
              "subtype": "vertical",
              "name": "",
              "family": "single_choice"
            },
            "answers": [
              {
                "text": "Yes",
                "visible": true,
                "position": 1,
                "type": "row",
                "answer_id": "9463351714"
              },
              {
                "text": "No",
                "visible": true,
                "position": 2,
                "type": "row",
                "answer_id": "9463351715"
              }
            ],
            "position": 2,
            "heading": "Did you attend the event?",
            "question_id": "858878456"
          },
          {
            "type": {
              "subtype": "vertical",
              "name": "",
              "family": "single_choice"
            },
            "answers": [
              {
                "text": "Yes",
                "visible": true,
                "position": 1,
                "type": "row",
                "answer_id": "9463356632"
              },
              {
                "text": "No",
                "visible": true,
                "position": 2,
                "type": "row",
                "answer_id": "9463356633"
              }
            ],
            "position": 9,
            "heading": "Did you attend the dry run the Monday before the event?",
            "question_id": "858879103"
          }
        ],
        "position": 1,
        "heading": ""
      }
    ],
    "question_count": 10,
    "date_modified": "2015-10-19 00:43:00",
    "preview_url": "https://www.surveymonkey.com/s.aspx?PREVIEW_MODE=DO_NOT_USE_THIS_LINK_FOR_COLLECTION&sm=d52oZQEPe_2BdUKn8yCvooeYlXG_2Butq2gOgVVL4MDgyfs_3D",
    "num_responses": 26,
    "date_created": "2015-10-05 03:04:00",
    "survey_id": "69835320"
  }
}'
]

{ #category : #'as yet unclassified' }
FireOps2015Survey class >> toApiConsoleArray: aCollection [
	| result |
	result := String streamContents: [ :str |
		aCollection
			do: [ :dict | str nextPutAll: (dict at: 'respondent_id') ]
			separatedBy: [ str nextPut: $, ] ].
	Clipboard clipboardText: result
]
