function nodes=generate(maxnodes,numofvars,nodes)
	for i=1:maxnodes
		newNode = [];
		newNode(1,1)=99999;
		for n=1:numofvars
			newNode(1,n+1)=(2*pi/(randi([1,252])));
		end
		nodes=[nodes;newNode];
	end
end