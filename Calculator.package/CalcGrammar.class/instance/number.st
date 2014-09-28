as yet unclassified
number
	^ '-' asParser optional , #digit asParser plus flatten trim ==> [ :arr | 
		((arr reject: #isNil) inject: '' into: [ :sum :each | sum , each asString ]) asNumber ]