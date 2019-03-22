function newNodes=breed(nodes,topNodes,newNodes)
	remainingNodesToMake=(size(nodes,1)-topNodes);
	for i=1:(remainingNodesToMake)
		parent1=(nodes(randi([1,size(nodes,1)]),:));
		parent2=(nodes(randi([1,size(nodes,1)]),:));
        while parent1==parent2
            parent2=(nodes(randi([1,size(nodes,1)]),:));
        end
		breedingRand = randi([0,1000]);
        
        if breedingRand<=500
			%%One-point breeding
			abcnum=randi([1,((size(nodes,2)-1)-1)]);
			child(1,1)=99999;
			for n=1:abcnum
				child(1,n+1)=parent1(1,n+1);
			end
			for n=abcnum:(size(nodes,2)-1)
				child(1,n+1)=parent2(1,n+1);%%Index in position 2 exceeds array bounds (must not exceed 1)
			end
			
			MutCr = randi([0,1000]);
            
            if MutCr <= 500 
				%%mutate a value (i.e. add or subtract a small amount to a cell)
				CellToChange = randi([2,(size(nodes,2)-1)+1]);
				child(1,CellToChange)=child(1,CellToChange)+(pi/2520*randi([-4,4]));
			else 
				%%creep a value (i.e. change one random cell to a new random number)
				CellToChange = randi([2,(size(nodes,2)-1)]);
				child(1,CellToChange)=(2*pi/randi([1,252]));
            end
			newNodes=[newNodes;child];
		else
			%%Two-point breeding
            abcnum1=randi([1,((size(nodes,2)-1))]);
			abcnum2=randi([1,((size(nodes,2)-1))]);
            while abcnum1==abcnum2
                abcnum2=randi([1,((size(nodes,2)-1)-1)]);
            end
			defnum1 = max([abcnum1 abcnum2]);
			defnum2 = min([abcnum1 abcnum2]);
			child(1,1) = 99999;
			for n=1:defnum1
				child(1,n+1) = parent1(1,n+1);
			end
			for n=defnum1:defnum2
				child(1,n+1) = parent2(1,n+1);
			end
			for n = defnum2:((size(nodes,2)-1))
				child(1,n+1) = parent2(1,n+1);%%Index in position 2 exceeds array bounds (must not exceed 1).
			end
			
			MutCr = randi([0,1000]);
            if MutCr <= 500
				%%mutate a value
				CellToChange = randi([2,(size(nodes,2)-1)]);
				child(1,CellToChange)=child(1,CellToChange)+(pi/(2520) * randi([-4,4]));
			else 
				%%creep a value
				CellToChange = randi([2,11]);
				child(1,CellToChange)= (2*pi/randi([1,252]));
            end
			newNodes = [newNodes;child];
        end
	end
end
