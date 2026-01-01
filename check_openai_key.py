import os
from dotenv import load_dotenv
from google import genai
from google.genai.errors import APIError

load_dotenv() 
key = os.getenv("GEMINI_API_KEY")

print("Key Loaded:", key is not None and len(key) > 10)

try:
    client = genai.Client()
    response = client.models.generate_content(
        model="gemini-2.5-flash", 
        contents="Generate one word: Success",
        config={"temperature": 0}
    )
    print("✅ SUCCESS: API Key is valid and working.")
    print("Response sample:", response.text)
    
except APIError as e:
    print("❌ FAILURE: GEMINI API Error (Check Quota/Key).")
    print("Details:", e)
except Exception as e:
    print(f"❌ FAILURE: General Error ({type(e).__name__}): {e}")

# للخروج من المترجم
# exit()