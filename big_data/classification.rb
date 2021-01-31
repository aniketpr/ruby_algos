require 'rubygems'
require 'decisiontree'

attributes = ['Age', 'Education', 'Income', 'Marital Status']

training = [
    ['36-55', 'Masters', 'High', 'Single', 1],
    ['18-35', 'High School', 'Low', 'Single', 0],
    ['36-55', 'Masters', 'High', 'Single', 1],
    ['18-35', 'PhD', 'High', 'Married', 1],
    ['< 18', 'High School', 'Low', 'Single', 1],
    ['55+', 'High School', 'High', 'Married', 0],
    ['55+', 'High School', 'High', 'Married', 1],
    ['55+', 'High School', 'High', 'Married', 1],
    ['55+', 'High School', 'High', 'Married', 1],
    ['< 18', 'Masters', 'Low', 'Single', 0]
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :discrete)
dec_tree.train 

test = ['18-35', 'PhD', 'High', 'Married']

decision = dec_tree.predict(test)

puts "Predicted: #{decision}"