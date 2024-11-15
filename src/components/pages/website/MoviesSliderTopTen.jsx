import useQueryData from '@/components/custom-hook/useQueryData';
import { devImgPath } from '@/components/helpers/functions-general';
import { ChevronLeft, ChevronRight, Dot, Play } from 'lucide-react';
import Slider from 'react-slick';
import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";

const MoviesSliderTopTen = ({title="",isTopTen=true, category}) => {
    function SampleNextArrow(props) {
        const { className, style, onClick } = props;
        return (
          <button
          className='absolute top-0 right-3'
            onClick={onClick}
          ><ChevronRight stroke={"#fff"} size={30}/>
          </button>
        );
      }
      
      function SamplePrevArrow(props) {
        const { className, style, onClick } = props;
        return (
            <button
            className='absolute -top-12 right-12'
             onClick={onClick}
           ><ChevronLeft stroke={"#fff"}size={30}/>
           </button>
        );
      }

    var settings = {
        dots: false,
        infinite: true,
        speed: 500,
        slidesToShow: 5,
        slidesToScroll: 5,
        nextArrow: <SampleNextArrow/>,
        prevArrow: <SamplePrevArrow/>,
      };    
     
      
  return (
    
    <div>
          <section className='pt-24 bg-primary text-white'>
    <div className='px-6'>
        <h2 className='mb-10 text-4xl pl-4'>{title}</h2>
      
        <Slider {...settings}>
            {category?.data.map((item, key) => (
   <div key={key}className="slider-item relative group overflow-hidden px-5">
   <img src={`${devImgPath}/${item.topmovies_image}`} alt="" className='w-[331px]
   h-[441px] object-cover' />
   <div className="info absolute p-4 text-white top-full left-5  bg-black bg-opacity-95 flex flex-col justify-center group-hover:top-0 transition-all w-[331px]
   h-[441px] z-40 ">
   
       <h2 className='leading-snug'>{item.topmovies_title}</h2>
       <p className='flex items-center mb-5'>{item.topmovies_genre}<Dot/>{item.topmovies_year} <Dot/>{item.topmovies_duration} </p>
       <h4 >Summary</h4>
       <p className='mb-4'>{item.topmovies_summary}</p>
       <h4>Cast</h4>
       <p>{item.topmovies_cast}</p>
       <button className='btn btn-accent self-start mt-5 gap-0'><Play size={20} className='-translate-x-1'/>Play</button>

   
   </div>
   {isTopTen &&
   <p className='absolute -bottom-3 -left-2 text-[200px] mb-0 leading-none font-black text-accent counter group-hover:opacity-0'>{item.topmovies_ranking}</p>
   }
</div>
            ))}
         
            
            </Slider>
        </div>
    </section>
    </div>
  )
}

export default MoviesSliderTopTen