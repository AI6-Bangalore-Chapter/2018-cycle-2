import numpy as np
import csv

def sigmoid(X):
    return (1/(1+np.exp(-X)))

def derivative_sigmoid(X):
    sigmoid_X = sigmoid(X)
    return (sigmoid_X*(1-sigmoid_X))

X = np.array([[1,0,1,0],[1,0,1,1],[0,1,0,1]])

wh = np.random.randn(4,3)
bh = np.random.randn(3)

hidden_layer_input = X.dot(wh) + bh
hidden_layer_activation = sigmoid(hidden_layer_input)

wout = np.random.randn(3,1)
bout = np.random.randn(1)

output_layer = hidden_layer_activation.dot(wout) + bout
output = sigmoid(output_layer)

y = np.array([1,1,0]).reshape(3,-1)
E = y - output

#Finding gradients
slope_output_layer = derivative_sigmoid(output)
slope_hidden_layer = derivative_sigmoid(hidden_layer_activation)

lr = 0.1
d_output = E * slope_output_layer * lr

error_at_hidden_layer = d_output * np.transpose(wout)
d_hidden_layer = error_at_hidden_layer * slope_hidden_layer

#Updating weights
wout_new =  wout + (np.transpose(hidden_layer_activation).dot(d_output))*lr
wh_new = wh + (np.transpose(X).dot(d_hidden_layer))*lr

#Updating biases
bh_new = bh + np.sum(d_hidden_layer,axis=0)*lr
bout_new = bout + np.sum(d_output,axis=0)*lr

with open('backprop_variables.csv', 'w') as csvfile:
    writer=csv.writer(csvfile, delimiter=',')
    #writer.writeheader()
    writer.writerow(["X"])
    writer.writerows(X)
    writer.writerow(["wh"])
    writer.writerows(wh)
    writer.writerow(["bh"])
    writer.writerow(bh)
    writer.writerow(["hidden_layer_input"])
    writer.writerows(hidden_layer_input)
    writer.writerow(["hidden_layer_activations"])
    writer.writerows(hidden_layer_activation)
    writer.writerow(["wout"])
    writer.writerows(wout)
    writer.writerow(["bout"])
    writer.writerow(bout)
    writer.writerow(["output"])
    writer.writerows(output)
    writer.writerow(["Error"])
    writer.writerows(E)
    writer.writerow(["slope_output_layer"])
    writer.writerows(slope_output_layer)
    writer.writerow(["slope_hidden_layer"])
    writer.writerows(slope_hidden_layer)
    writer.writerow(["learning_rate"])
    writer.writerow([str(lr)])
    writer.writerow(["d_output"])
    writer.writerows(d_output)
    writer.writerow(["error_at_hidden_layer"])
    writer.writerows(error_at_hidden_layer)
    writer.writerow(["d_hidden_layer"])
    writer.writerows(d_hidden_layer)
    writer.writerow(["wout_new"])
    writer.writerows(wout_new)
    writer.writerow(["wh_new"])
    writer.writerows(wh_new)
    writer.writerow(["bh_new"])
    writer.writerow(bh_new)
    writer.writerow(["bout_new"])
    writer.writerow(bout_new)
    


    













