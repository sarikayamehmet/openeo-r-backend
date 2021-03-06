#' Write generics to disk
#' 
#' @description This function writes rasters in a consistent directory structure to disk in generic GeoTIFF formats. 
#' It takes as input an object of class `Collection` and the path where the files are to be written to disk. Once the files 
#' have been written to disk, it can be loaded into a `stars` object by the user after which custom functions could 
#' be applied to it.
#'
#' @param collection_obj Object of class Collection as produced in the previous step while executing the process graph before encountering the UDF
#' @param dir_name Path where the generics are to be written to disk. This could be obtained from the UDF process if it is defined by the user while registering it.
#'
#' @export
#'
write_generics = function(collection_obj, dir_name = "disk") #dir_name could be obtained if it is defined while registering the UDF
{
  scene_table = collection_obj$getData()
  R2G_obj = R2Generic$new(scenes = scene_table)
  R2G_obj$write_scenes(dir_name = dir_name)
  
  R2G_obj$legend_to_disk(dir_name)

}