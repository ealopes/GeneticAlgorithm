function nodes=nextGen(bottomNodes,newNodes) %%Finishes creating the next generation to be used in the next loop.
	for i=1:bottomNodes
		newNode = [];
		newNode(1,1) = (99999);
		for n=1:(size(newNodes,2)-1)
			newNode(1,n+1)=(2*pi/(randi([1,252])));
		end
		newNodes=[newNodes;newNode];
	end
	nodes=newNodes;
	newNodes=[];
end