%Sets suitable Values for 2D plots from the <results> variable

z_sample = linspace(1, length(z_values), 3)
y_sample = linspace(1, length(y_values), 3)
x_sample = linspace(1, length(x_values), 3)

%set z to first last and middle, if it exists

plot_z_values = [ z_values(floor(z_sample(1))) z_values(floor(z_sample(2))) z_values(floor(z_sample(3)))]

%set x/y to  last and middle, if it exists
plot_y_values = [ y_values(floor(y_sample(2))) y_values(floor(y_sample(3)))]
plot_x_values = [ x_values(floor(x_sample(2))) x_values(floor(x_sample(3)))]