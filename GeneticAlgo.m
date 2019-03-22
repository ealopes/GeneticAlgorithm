NumberOfNodes=20;
NumberOfVariables=10;
bottomNodes=3;
topNodes=2;
maxGeneration=10000;

generation=1;
nodes=generate(NumberOfNodes,NumberOfVariables,[]);
while generation<maxGeneration
    nodes=assessFitness(nodes);
    nodes=killOff(bottomNodes,nodes);
    newNodes=beginNewList(nodes,topNodes);
    newNodes=breed(nodes,topNodes,newNodes);
    nodes=nextGen(bottomNodes,newNodes);
    generation=generation+1;
end
topNode=(beginNewList(assessFitness(nodes),1));
disp('The top node is : ');
disp(topNode);