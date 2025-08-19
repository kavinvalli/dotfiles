from openai import OpenAI

OPENAI_API_KEY = ""
HELICONE_API_KEY = ""

client = OpenAI(
    api_key=OPENAI_API_KEY,
    base_url="http://localhost:8787/v1",
    default_headers={  # Optionally set default headers or set per request (see below)
        "Helicone-Auth": f"Bearer {HELICONE_API_KEY}",
    }
)

response = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "What is the capital of the United States?"},
    ],
    user="user-id-123",
)

print(response)
