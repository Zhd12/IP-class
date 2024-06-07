clc;clear;close all;
%%
train_dt = readmatrix('./mnist_dataset/mnist_train.csv');
test_dt = readmatrix('./mnist_dataset/mnist_test.csv');
%%
label_train = train_dt(:,1)';
train_dt = normalize(train_dt(:,2:end).');
%%
label_test = test_dt(:,1)';
test_dt = normalize(test_dt(:,2:end).');
%%
net = fitnet(100,'traingd');
net.trainParam.epochs = 30;
net.trainParam.lr = 0.01;
net.trainParam.max_fail = 30;
% Network = fitnet()
%%
for i=1:10
    net = train(net,train_dt,label_train);
    predicted_value = round(net(test_dt));
    
    % Calculate the accuracy
    accuracy = 100*(sum(predicted_value == label_test)/10000);
    disp(['Accuracy: ', num2str(accuracy), '% in ', num2str(i)]);
end
