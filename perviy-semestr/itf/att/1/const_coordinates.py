import math
#Функция возращающая координаты траектории
def trajectory_list_create(time_full, time_step,radius_1, radius_2,omega_1, omega_2):
    trajectory_list = [0] * (time_full // time_step + 1)
    for i in range(time_full // time_step + 1):
        trajectory_list[i] = [0] * 2
    i = 0
    while (i * time_step <= time_full):
        time_now = i * time_step
        trajectory_list[i][0] = radius_1 * math.cos(omega_1 * time_now) - radius_2 * math.cos(omega_2 * time_now)  # x # Mars-Earth
        trajectory_list[i][1] = radius_1 * math.sin(omega_1 * time_now) - radius_2 * math.sin(omega_2 * time_now)  # y
        i += 1
    return trajectory_list

# -------------------Входные данные-----------------------------------
time_Mars = 687
time_Venus = 224.7
time_Earth = 365.25
tSaturn = 10759
radius_Mars = 228
radius_Venus = 108
radius_Earth = 150
radius_Saturn = 1400  # * 10^6km
w_Mars = 2 * math.pi / time_Mars
w_Earth = 2 * math.pi / time_Earth
w_Venus = 2 * math.pi / time_Venus
w_Saturn = 2 * math.pi / tSaturn
time_step = 6  # days
time_full = 365 * 50
Mars_trajectory = trajectory_list_create(time_full, time_step, radius_Mars, radius_Earth, w_Mars, w_Earth)
Venus_trajectory = trajectory_list_create(time_full, time_step, radius_Venus, radius_Earth, w_Venus, w_Earth)
Saturn_trajectory = trajectory_list_create(time_full + 365 * 30, time_step, radius_Saturn, radius_Earth, w_Saturn, w_Earth)
Saturn_Venus_trajectory = trajectory_list_create(time_full + 365 * 30, time_step, radius_Venus, radius_Saturn, w_Venus, w_Saturn)
for i in range(len(Mars_trajectory)):
    for j in range(2):
        Mars_trajectory[i][j] = Mars_trajectory[i][j] / 2
for i in range(len(Venus_trajectory)):
    for j in range(2):
        Venus_trajectory[i][j] = Venus_trajectory[i][j] / 1.5
for i in range(len(Saturn_trajectory)):
    for j in range(2):
        Saturn_trajectory[i][j] = Saturn_trajectory[i][j] / 8
for i in range(len(Saturn_Venus_trajectory)):
    for j in range(2):
        Saturn_Venus_trajectory[i][j] = Saturn_Venus_trajectory[i][j] / 8
