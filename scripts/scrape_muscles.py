import io
import os
import requests
import json
from svglib.svglib import svg2rlg
from reportlab.graphics.shapes import Drawing
from reportlab.graphics.renderSVG import SVGCanvas, draw


SECRET = "4d3dae35ecf91f17179237e722ba30d5d58270da"

URL = "https://wger.de/api/v2/"
STATIC_URL = "https://wger.de/"

IMAGES_DIR = "assets/images"
DATA_DIR = "assets/data"

def main():
    if not os.path.exists(IMAGES_DIR):
        os.makedirs(IMAGES_DIR)
        print(f"Created {IMAGES_DIR}")

    if not os.path.exists(DATA_DIR):
        os.makedirs(DATA_DIR)
        print(f"Created {DATA_DIR}")

    url = URL + "muscle/"
    headers = {"Accept": "application/json", "Authorization": SECRET}

    r = requests.get(url=url, headers=headers)
    muscles = json.loads(r.content)


    image_data_front = requests.get(url=STATIC_URL + "static/images/muscles/muscular_system_front.svg", headers=headers)
    image_data_back = requests.get(url=STATIC_URL + "static/images/muscles/muscular_system_back.svg", headers=headers)

    image_data_front_f = f"{IMAGES_DIR}/body_front.svg"
    image_data_back_f = f"{IMAGES_DIR}/body_back.svg"

    if not os.path.exists(image_data_front_f):            
        image_front = svg2rlg(io.BytesIO(image_data_front.content))
        c = SVGCanvas((image_front.width, image_front.height))
        draw(image_front, c, 0, 0)
        
        with open(image_data_front_f, "w") as f_image:
            c.save(f_image)

    if not os.path.exists(image_data_back_f):      
        image_back = svg2rlg(io.BytesIO(image_data_back.content))
        c = SVGCanvas((image_back.width, image_back.height))
        draw(image_back, c, 0, 0)      

        with open(image_data_back_f, "w") as f_image:
            c.save(f_image)

    data = []
    for muscle in muscles["results"]:
        name = muscle["name"]
        image_url = muscle["image_url_main"]
        isFront = muscle["is_front"]

        print(f" - {name} {'Front' if isFront else 'Back'}")
        
        image_name = name.lower().replace(" ", "_")
        
        data.append({
            "name": name,
            "image": f"{IMAGES_DIR}/{image_name}.svg",
            "region": None,
        })

        image_data = requests.get(url=STATIC_URL + image_url, headers=headers)
        
        image = svg2rlg(io.BytesIO(image_data.content))        
        c = SVGCanvas((image.width, image.height))
        draw(image, c, 0, 0)
        
        with open(f"{IMAGES_DIR}/{image_name}.svg", "w") as f_image:    
            c.save(f_image)

    with open(f"{DATA_DIR}/muscles.json", "w") as f_muscles:
        json.dump(data, f_muscles)


if __name__ == "__main__":
    print("Scraping muscles")
    main()
    print("Done")