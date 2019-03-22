function nodes=assessFitness(nodes) 
    maxfitness=99999;
	for i=1:(size(nodes,1))
		nodeFitness = fitness(nodes(i,:));
		nodes(i,1)=fitness(nodes(i,:));
        if nodeFitness>maxfitness
			maxfitness=nodeFitness;
        end
	end
end