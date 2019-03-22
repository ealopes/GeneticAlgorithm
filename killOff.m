function nodes=killOff(bottomNodes,nodes) %Kills off N of the cells with the lowest fitness
    for n=1:bottomNodes
        lowest = 99999;
        for i=1:(size(nodes,1))
           	if nodes(i,1) < lowest
               	lowest = nodes(i,1);
                   nextToKill = i;
            end
        end
		nodes(nextToKill,:)=[];
    end
end
