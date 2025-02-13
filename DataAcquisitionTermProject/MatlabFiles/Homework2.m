clear all;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Read Data
Data = readmatrix('u.txt');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Edited matrix for user are rows and colums are items. changed 0 to -1
[Edited] = Edit(Data);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
% Binary Form Of Edited Matrix 1,2,3 are 0 4,5 1
%[BinaryMatrix] = ConvertBinary(Edited);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Train set and Test set are seperated
%[TrainingSet]= SeperateMatrix(BinaryMatrix,1,700);
%[TestSet]= SeperateMatrix(BinaryMatrix,701,943);
% 
% [row,column]=size(Edited);
%     foldsize = round(row/10);
%     Prediction=zeros(1,1);
%     KfoldErrors=zeros(1,1);
%         for j=1:10
%        
%         startPoint = (j-1)*foldsize;
%         endPoint = startPoint + foldsize; 
%             if(startPoint==0)
%             endPoint= endPoint+1;
%             [TestSet]=SeperateMatrix(Edited,1,endPoint);
%             [TrainingSet] = SeperateMatrix(Edited,endPoint+1,row);
%             [TestThreeRateOrg,TestThreeRateIndexOrg] = FindTestRate(TestSet);
%             [AllDistancesOther] = CorrelationForNew(TrainingSet,TestSet);
%             [row2,column2]=size(AllDistancesOther);
%             Prediction_10=zeros(1,1);
%             Prediction_20=zeros(1,1);
%             Prediction_30=zeros(1,1);
%             Prediction_40=zeros(1,1);
%             Prediction_50=zeros(1,1);
%             Prediction_60=zeros(1,1);
%             Prediction_70=zeros(1,1);
%             Prediction_80=zeros(1,1);
%             for k=1:row2
%             [a,index] =  sort(AllDistancesOther(k,:),'descend');
% 
%             
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,10);
%             Prediction_10(k,1) = Prediction1;
% %             Prediction_10(k,2) = Prediction2;
% %             Prediction_10(k,3) = Prediction3;
%             PredictionRounded= round(Prediction_10);
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,20);
%             Prediction_20(k,1) = Prediction1;
% %             Prediction_20(k,2) = Prediction2;
% %             Prediction_20(k,3) = Prediction3;
%             PredictionRounded20= round(Prediction_20);
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,30);
%             Prediction_30(k,1) = Prediction1;
% %             Prediction_30(k,2) = Prediction2;
% %             Prediction_30(k,3) = Prediction3;
%             PredictionRounded30= round(Prediction_30);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,40);
%             Prediction_40(k,1) = Prediction1;
% %             Prediction_40(k,2) = Prediction2;
% %             Prediction_40(k,3) = Prediction3;
%             PredictionRounded40= round(Prediction_40);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,50);
%             Prediction_50(k,1) = Prediction1;
% %             Prediction_50(k,2) = Prediction2;
% %             Prediction_50(k,3) = Prediction3;
%             PredictionRounded50= round(Prediction_50);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,60);
%             Prediction_60(k,1) = Prediction1;
% %             Prediction_60(k,2) = Prediction2;
% %             Prediction_60(k,3) = Prediction3;
%             PredictionRounded60= round(Prediction_60);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,70);
%             Prediction_70(k,1) = Prediction1;
% %             Prediction_70(k,2) = Prediction2;
% %             Prediction_70(k,3) = Prediction3;
%             PredictionRounded70= round(Prediction_70);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,80);
%             Prediction_80(k,1) = Prediction1;
% %             Prediction_80(k,2) = Prediction2;
% %             Prediction_80(k,3) = Prediction3;
%             PredictionRounded80= round(Prediction_80);
% 
%             [Error_10] = MAE(PredictionRounded,TestThreeRateOrg);
%             [Error_20] = MAE(PredictionRounded20,TestThreeRateOrg);
%             [Error_30] = MAE(PredictionRounded30,TestThreeRateOrg);
%             [Error_40] = MAE(PredictionRounded40,TestThreeRateOrg);
%             [Error_50] = MAE(PredictionRounded50,TestThreeRateOrg);
%             [Error_60] = MAE(PredictionRounded60,TestThreeRateOrg);
%             [Error_70] = MAE(PredictionRounded70,TestThreeRateOrg);
%             [Error_80] = MAE(PredictionRounded80,TestThreeRateOrg);
% 
%             
%             
%             KfoldErrors(1,j)=Error_10;
%             KfoldErrors(2,j)=Error_20;
%             KfoldErrors(3,j)=Error_30;
%             KfoldErrors(4,j)=Error_40;
%             KfoldErrors(5,j)=Error_50;
%             KfoldErrors(6,j)=Error_60;
%             KfoldErrors(7,j)=Error_70;
%             KfoldErrors(8,j)=Error_80;
%             end
%             else
%             [TestSet]=SeperateMatrix(Edited,startPoint,endPoint);
%             [TrainingSetFirstPiece] = SeperateMatrix(Edited,1,(startPoint-1));
%             [TrainingSetSecondPiece] = SeperateMatrix(Edited,(endPoint+1),row);
%             TrainingSet=[TrainingSetFirstPiece;TrainingSetSecondPiece];
%             [TestThreeRateOrg,TestThreeRateIndexOrg] = FindTestRate(TestSet);
%             [AllDistancesOther] = CorrelationForNew(TrainingSet,TestSet);
%             [row2,column2]=size(AllDistancesOther);
%             for k=1:row2
%             [a,index] =  sort(AllDistancesOther(k,:),'descend');
%            [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,10);
%             Prediction_10(k,1) = Prediction1;
% %             Prediction_10(k,2) = Prediction2;
% %             Prediction_10(k,3) = Prediction3;
%             PredictionRounded= round(Prediction_10);
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,20);
%             Prediction_20(k,1) = Prediction1;
% %             Prediction_20(k,2) = Prediction2;
% %             Prediction_20(k,3) = Prediction3;
%             PredictionRounded20= round(Prediction_20);
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,30);
%             Prediction_30(k,1) = Prediction1;
% %             Prediction_30(k,2) = Prediction2;
% %             Prediction_30(k,3) = Prediction3;
%             PredictionRounded30= round(Prediction_30);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,40);
%             Prediction_40(k,1) = Prediction1;
% %             Prediction_40(k,2) = Prediction2;
% %             Prediction_40(k,3) = Prediction3;
%             PredictionRounded40= round(Prediction_40);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,50);
%             Prediction_50(k,1) = Prediction1;
% %             Prediction_50(k,2) = Prediction2;
% %             Prediction_50(k,3) = Prediction3;
%             PredictionRounded50= round(Prediction_50);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,60);
%             Prediction_60(k,1) = Prediction1;
% %             Prediction_60(k,2) = Prediction2;
% %             Prediction_60(k,3) = Prediction3;
%             PredictionRounded60= round(Prediction_60);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,70);
%             Prediction_70(k,1) = Prediction1;
% %             Prediction_70(k,2) = Prediction2;
% %             Prediction_70(k,3) = Prediction3;
%             PredictionRounded70= round(Prediction_70);
% 
%             [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSet,TestSet,TestThreeRateIndexOrg,k,80);
%             Prediction_80(k,1) = Prediction1;
% %             Prediction_80(k,2) = Prediction2;
% %             Prediction_80(k,3) = Prediction3;
%             PredictionRounded80= round(Prediction_80);
% 
%             [Error_10] = MAE(PredictionRounded,TestThreeRateOrg);
%             [Error_20] = MAE(PredictionRounded20,TestThreeRateOrg);
%             [Error_30] = MAE(PredictionRounded30,TestThreeRateOrg);
%             [Error_40] = MAE(PredictionRounded40,TestThreeRateOrg);
%             [Error_50] = MAE(PredictionRounded50,TestThreeRateOrg);
%             [Error_60] = MAE(PredictionRounded60,TestThreeRateOrg);
%             [Error_70] = MAE(PredictionRounded70,TestThreeRateOrg);
%             [Error_80] = MAE(PredictionRounded80,TestThreeRateOrg);
% 
%             
%             
%             KfoldErrors(1,j)=Error_10;
%             KfoldErrors(2,j)=Error_20;
%             KfoldErrors(3,j)=Error_30;
%             KfoldErrors(4,j)=Error_40;
%             KfoldErrors(5,j)=Error_50;
%             KfoldErrors(6,j)=Error_60;
%             KfoldErrors(7,j)=Error_70;
%             KfoldErrors(8,j)=Error_80;
% 
%             end
%         
%             end
%         end
%         
        
    [row,column]=size(Edited);
    foldsize=round(column/10);
    ItemEdited= transpose(Edited);
    KfoldErrors=zeros(1,1);
        for j=1:10
       
        startPoint = (j-1)*foldsize;
        endPoint = startPoint + foldsize; 
            if(startPoint==0)
            endPoint= endPoint+1;
            [TestSetItem]=SeperateMatrix(ItemEdited,1,endPoint);
            [TrainingSetItem] = SeperateMatrix(ItemEdited,endPoint+1,column);
            [TestThreeRateOrg,TestThreeRateIndexOrg] = FindTestRate(TestSetItem);
            [CosineSimMatrix]= CosineSim(TrainingSetItem,TestSetItem);
            [row2,column2]=size(CosineSimMatrix);
            Prediction_10=zeros(1,1);
            Prediction_20=zeros(1,1);
            Prediction_30=zeros(1,1);
            Prediction_40=zeros(1,1);
            Prediction_50=zeros(1,1);
            Prediction_60=zeros(1,1);
            Prediction_70=zeros(1,1);
            Prediction_80=zeros(1,1);
            for k=1:row2
            [a,index] =  sort(CosineSimMatrix(k,:),'descend');
            
            [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,10);
             Prediction_10(k,1) = Prediction1;
             PredictionRounded= round(Prediction_10);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,20);
             Prediction_20(k,1) = Prediction1;
             PredictionRounded20= round(Prediction_20);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,30);
             Prediction_30(k,1) = Prediction1;
             PredictionRounded30= round(Prediction_30);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,40);
             Prediction_40(k,1) = Prediction1;
             PredictionRounded40= round(Prediction_40);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,50);
             Prediction_50(k,1) = Prediction1;
             PredictionRounded50= round(Prediction_50);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,60);
             Prediction_60(k,1) = Prediction1;
             PredictionRounded60= round(Prediction_60);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,70);
             Prediction_70(k,1) = Prediction1;
             PredictionRounded70= round(Prediction_70);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,80);
             Prediction_80(k,1) = Prediction1;
             PredictionRounded80= round(Prediction_80);
    
            
           if(k==row2)

            [Error_10] = MAE(PredictionRounded,TestThreeRateOrg);
            [Error_20] = MAE(PredictionRounded20,TestThreeRateOrg);
            [Error_30] = MAE(PredictionRounded30,TestThreeRateOrg);
            [Error_40] = MAE(PredictionRounded40,TestThreeRateOrg);
            [Error_50] = MAE(PredictionRounded50,TestThreeRateOrg);
            [Error_60] = MAE(PredictionRounded60,TestThreeRateOrg);
            [Error_70] = MAE(PredictionRounded70,TestThreeRateOrg);
            [Error_80] = MAE(PredictionRounded80,TestThreeRateOrg);

            
            
            KfoldErrors(1,j)=Error_10;
            KfoldErrors(2,j)=Error_20;
            KfoldErrors(3,j)=Error_30;
            KfoldErrors(4,j)=Error_40;
            KfoldErrors(5,j)=Error_50;
            KfoldErrors(6,j)=Error_60;
            KfoldErrors(7,j)=Error_70;
            KfoldErrors(8,j)=Error_80;
            end
            end
            else
            [TestSetItem]=SeperateMatrix(ItemEdited,startPoint,endPoint);
            [TrainingSetFirstPieceItem] = SeperateMatrix(ItemEdited,1,(startPoint-1));
            [TrainingSetSecondPieceItem] = SeperateMatrix(ItemEdited,(endPoint+1),column);
            TrainingSetItem=[TrainingSetFirstPieceItem;TrainingSetSecondPieceItem];
            [TestThreeRateOrg,TestThreeRateIndexOrg] = FindTestRate(TestSetItem);
            [CosineSimMatrix]= CosineSim(TrainingSetItem,TestSetItem);
            [row2,column2]=size(CosineSimMatrix);
            Prediction_10=zeros(1,1);
            Prediction_20=zeros(1,1);
            Prediction_30=zeros(1,1);
            Prediction_40=zeros(1,1);
            Prediction_50=zeros(1,1);
            Prediction_60=zeros(1,1);
            Prediction_70=zeros(1,1);
            Prediction_80=zeros(1,1);
            for k=1:row2
            [a,index] =  sort(CosineSimMatrix(k,:),'descend');

            [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,10);
             Prediction_10(k,1) = Prediction1;
             PredictionRounded= round(Prediction_10);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,20);
             Prediction_20(k,1) = Prediction1;
             PredictionRounded20= round(Prediction_20);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,30);
             Prediction_30(k,1) = Prediction1;
             PredictionRounded30= round(Prediction_30);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,40);
             Prediction_40(k,1) = Prediction1;
             PredictionRounded40= round(Prediction_40);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,50);
             Prediction_50(k,1) = Prediction1;
             PredictionRounded50= round(Prediction_50);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,60);
             Prediction_60(k,1) = Prediction1;
             PredictionRounded60= round(Prediction_60);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,70);
             Prediction_70(k,1) = Prediction1;
             PredictionRounded70= round(Prediction_70);
             [Prediction1] = ItemBasePrediction(a,index,TestSetItem,TrainingSetItem,TestThreeRateIndexOrg,k,80);
             Prediction_80(k,1) = Prediction1;
             PredictionRounded80= round(Prediction_80);
    
            
           

            [Error_10] = MAE(PredictionRounded,TestThreeRateOrg);
            [Error_20] = MAE(PredictionRounded20,TestThreeRateOrg);
            [Error_30] = MAE(PredictionRounded30,TestThreeRateOrg);
            [Error_40] = MAE(PredictionRounded40,TestThreeRateOrg);
            [Error_50] = MAE(PredictionRounded50,TestThreeRateOrg);
            [Error_60] = MAE(PredictionRounded60,TestThreeRateOrg);
            [Error_70] = MAE(PredictionRounded70,TestThreeRateOrg);
            [Error_80] = MAE(PredictionRounded80,TestThreeRateOrg);

            
            
            KfoldErrors(1,j)=Error_10;
            KfoldErrors(2,j)=Error_20;
            KfoldErrors(3,j)=Error_30;
            KfoldErrors(4,j)=Error_40;
            KfoldErrors(5,j)=Error_50;
            KfoldErrors(6,j)=Error_60;
            KfoldErrors(7,j)=Error_70;
            KfoldErrors(8,j)=Error_80;
            
        
            end
            end
        end

%[TrainingSetOrg]= SeperateMatrix(Edited,1,700);
%[TestSetOrg]= SeperateMatrix(Edited,701,943);
% [TrainSetItem] = SeperateMatrix(transpose(Edited),1,1400);
% [TestSetItem] = SeperateMatrix(transpose(Edited),1401,1682);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Take first 3 rate from all users
%[TestThreeRate,TestThreeRateIndex] = FindTestRate(TestSet);
%[TestThreeRateOrg,TestThreeRateIndexOrg] = FindTestRate(TestSetOrg);
%[TestItemRates,TestItemIndexes] = FindTestRate(TestSetItem);
% [CosineSimMatrix]= CosineSim(TrainSetItem,TestSetItem);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%All Correlations are Caltulated and writed in own row and columns
%Correlation user1 and user2 at AllCorrelationMatrix(1,2) 
%[AllCorrelationMatrix]= CorrelationMatrix(TrainingSetOrg);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Generated random test matrix for precision recall calculation and table
%created for evaluation TP-FP-FN-TN 
%RandomTestMatrix= round(rand(243,3));
%[ContTable] = ContingencyTable(TestThreeRate,RandomTestMatrix);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Precision recall and accuracy are calculated
%[Precision,Recall,Accuracy] = PerformanceEvaluation(ContTable);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%[AllDistancesOther] = CorrelationForNew(TrainingSetOrg,TestSetOrg);

%[KNN] = KNNeighbour(AllDistancesOther);
% [row,column]=size(AllDistancesOther);
% Prediction_10=zeros(1,1);
% Prediction_20=zeros(1,1);
% Prediction_30=zeros(1,1);
% Prediction_40=zeros(1,1);
% Prediction_50=zeros(1,1);
% Prediction_60=zeros(1,1);
% Prediction_70=zeros(1,1);
% Prediction_80=zeros(1,1);
% 
% for i=1:row
% [a,index] =  sort(AllDistancesOther(i,:),'descend');
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,10);
% Prediction_10(i,1) = Prediction1;
% Prediction_10(i,2) = Prediction2;
% Prediction_10(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,20);
% Prediction_20(i,1) = Prediction1;
% Prediction_20(i,2) = Prediction2;
% Prediction_20(i,3) = Prediction3;
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,30);
% Prediction_30(i,1) = Prediction1;
% Prediction_30(i,2) = Prediction2;
% Prediction_30(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,40);
% Prediction_40(i,1) = Prediction1;
% Prediction_40(i,2) = Prediction2;
% Prediction_40(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,50);
% Prediction_50(i,1) = Prediction1;
% Prediction_50(i,2) = Prediction2;
% Prediction_50(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,60);
% Prediction_60(i,1) = Prediction1;
% Prediction_60(i,2) = Prediction2;
% Prediction_60(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,70);
% Prediction_70(i,1) = Prediction1;
% Prediction_70(i,2) = Prediction2;
% Prediction_70(i,3) = Prediction3;
% 
% [Prediction1,Prediction2,Prediction3] = GetPrediction(a,index,TrainingSetOrg,TestSetOrg,TestThreeRateIndexOrg,i,80);
% Prediction_80(i,1) = Prediction1;
% Prediction_80(i,2) = Prediction2;
% Prediction_80(i,3) = Prediction3;
% 
% [Error_10] = MAE(Prediction_10,TestThreeRateOrg);
% [Error_20] = MAE(Prediction_20,TestThreeRateOrg);
% [Error_30] = MAE(Prediction_30,TestThreeRateOrg);
% [Error_40] = MAE(Prediction_40,TestThreeRateOrg);
% [Error_50] = MAE(Prediction_50,TestThreeRateOrg);
% [Error_60] = MAE(Prediction_60,TestThreeRateOrg);
% [Error_70] = MAE(Prediction_70,TestThreeRateOrg);
% [Error_80] = MAE(Prediction_80,TestThreeRateOrg);


%end












