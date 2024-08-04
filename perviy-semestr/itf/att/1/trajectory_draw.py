from tkinter import *
from turtle import *

#Скрываем черепаху и даем ей стартовую позицию
def turtle_start_procedure(new_turtle, coordinate_list):
    new_turtle.pu()
    new_turtle.goto(coordinate_list[1][0], coordinate_list[1][1])
    new_turtle.pd()
    new_turtle.hideturtle()
    new_turtle._tracer(0, 0)

#Построение траектории
def trajectory_drawing(traj_turtle, coordinate_list):
    for i in range(len(coordinate_list)):
        traj_turtle.goto(coordinate_list[i][0], coordinate_list[i][1])
    traj_turtle._update()

#Импорт входных данных
from const_coordinates import *

#Начало создания окна
window = Tk()
window.grid()

#Создаем 4 холста
canvases = [Canvas(window, width=400, height=400) for _ in range(4)]

canvases[0].place(x=0, y=0)
canvases[1].place(x=400, y=0)
canvases[2].place(x=0, y=400)
canvases[3].place(x=400, y=400)

turtle1 = RawTurtle(canvases[0]) #1 график
turtle_start_procedure(turtle1, Mars_trajectory)
trajectory_drawing(turtle1, Mars_trajectory)

turtle2 = RawTurtle(canvases[1]) #2 график
turtle_start_procedure(turtle2, Venus_trajectory)
trajectory_drawing(turtle2, Venus_trajectory)

turtle3 = RawTurtle(canvases[2])
turtle_start_procedure(turtle3, Saturn_trajectory)
trajectory_drawing(turtle3, Saturn_trajectory)
#3 график

turtle4 = RawTurtle(canvases[3]) #4 график
turtle_start_procedure(turtle4, Saturn_Venus_trajectory)
trajectory_drawing(turtle4, Saturn_Venus_trajectory)

window.mainloop()
