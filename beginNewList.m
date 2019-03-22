function newNodes=beginNewList(nodes,topNodes)
    newNodes=[];
    for n=1:topNodes
		largest = -99999;
        for i=1:(size(nodes,1))
			if nodes(i,1) > largest
				largest = nodes(i,1);
				nextToKeep = i;
			end
        end
        
        newNodes=[newNodes;nodes(nextToKeep,:)];
        nodes(nextToKeep,:)=[];
        
    end
end
