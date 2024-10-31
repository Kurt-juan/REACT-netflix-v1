import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";
import Banner from './Banner';
import Header from './Header';
import MoviesSlider from './MoviesSlider';
import useQueryData from "@/components/custom-hook/useQueryData";
import SpinnerTable from "@/components/partials/spinners/SpinnerTable";
import MoviesSliderTopTen from "./MoviesSliderTopTen";
import SeriesSliderTopTen from "./SeriesSliderTopTen";

const Home = () => {
  const {
    isLoading,
    isFetching,
    error,
    data: movies,
  } = useQueryData(
    `/v1/movies`, // endpoint
     "get", // method
    "movies",

  );
   

  
  const {
    isLoading:topMoviesIsLoading,
    isFetching:topMoviesIsFetching,
    error:topMoviesError,
    data: topmovies,
  } = useQueryData(
    `/v1/top-movies`, // endpoint
     "get", // method
    "top-movies",

  );
  
  const {
    isLoading:topSeriesIsLoading,
    isFetching:topSeriesIsFetching,
    error:topSeriesError,
    data: topseries,
  } = useQueryData(
    `/v1/top-series`, // endpoint
     "get", // method
    "top-series",

  );
  

  const getAllKdrama = !isLoading && movies?.data.filter((movie) => movie.movies_category === 'kdrama' ) 
  const getAllPinoy = !isLoading && movies?.data.filter((movie) => movie.movies_category === 'pinoy' ) 
  const getAllInternational = !isLoading && movies?.data.filter((movie) => movie.movies_category === 'international' ) 
  



  console.log(getAllKdrama)
  return (
    <>
   <Header/>
   <Banner/>

   {topMoviesIsLoading ? <SpinnerTable/> : <MoviesSliderTopTen title ="Top Movies" isTopTen={true} category = {topmovies}/> }

   {topSeriesIsLoading ? <SpinnerTable/> : <SeriesSliderTopTen title ="Top Series" isTopTen={true} category = {topseries}/> }

    {isLoading ? <SpinnerTable/> : <MoviesSlider title ="Korean Drama" isTopTen={false} category = {getAllKdrama}/> }
    {isLoading ? <SpinnerTable/> : <MoviesSlider title ="Pinoy Drama" isTopTen={false} category = {getAllPinoy}/> }
    {isLoading ? <SpinnerTable/> : <MoviesSlider title ="International" isTopTen={false} category = {getAllInternational}/> }
  
    </>
  )
}

export default Home