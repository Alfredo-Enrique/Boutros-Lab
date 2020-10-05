#!/usr/bin/env nextflow

params.str = 'Holla world!'
def (a, b, c) = [1, 2]
println c
println "------"

myList = [1776, -1, 33, 99, 0, 928734928763]
println myList[0]
println myList.size()
println "------"

x = 10
if( x < 0.5 ) {
    println "You lost."
}
else {
    println "You won!"
}
println "------"

foxtype = 'quick'
foxcolor = ['b', 'r', 'o', 'w', 'n']
println "The $foxtype ${foxcolor.join()} fox"

x = 'Hello'
println '$x + $y'

println "-------"

text = """
    hello there James
    how are you today?
    """
println text

println "-------"

println baseDir

println "-------"

myFile = file('/Users/homefolder/Documents/GitHub/NEXTFLOW_Training/000.output.txt')
count = 0
myFile.eachLine {  str ->
        println "line ${count++}: $str"
    }
