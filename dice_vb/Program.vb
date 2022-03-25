Imports System

Module Program
    Sub Main(args As String())
        Console.Write("Count: ")
        Dim count As Integer = Console.ReadLine()
        Console.Write("Sides: ")
        Dim sides As Integer = Console.ReadLine()

        Dim rnd As Random = New Random()
        Dim sum As Integer = 0

        For i As Integer = 0 To count - 1
            Dim random As Integer = rnd.Next(1, sides)
            Console.WriteLine(random)
            sum += random
        Next

        Console.WriteLine("Sum: " + sum.ToString())
    End Sub
End Module
