create_timestep_gif_makefile <- function(makefile, task_plan, remake_file) {
  scipiper::create_task_makefile(
    makefile=makefile, task_plan=task_plan,
    include=remake_file,
    packages=c('dplyr', 'scipiper'),
    sources=c(
      '6_visualize/src/create_animation_frame.R',
      '6_visualize/src/prep_datetime_fun.R'),
    file_extensions=c('feather','ind'),
    ind_complete=TRUE)
}
