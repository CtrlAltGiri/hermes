from openai import AsyncAzureOpenAI
from agents import set_default_openai_client
from agents import Agent, Runner
from dotenv import load_dotenv
load_dotenv()

import asyncio
import os

custom_client = AsyncAzureOpenAI(
    azure_endpoint=os.getenv("OPENAI_BASE_URL", ""),
    api_key=os.getenv("OPENAI_API_KEY"),
    api_version=os.getenv("OPENAI_API_VERSION")
)

set_default_openai_client(custom_client)

async def main():
    agent = Agent(
        name="Math Tutor",
        instructions="You provide help with math problems. Explain your reasoning at each step and include examples",
        model="gpt-5-nano"
    )
    
    result = await Runner.run(agent, "What is the capital of France?s")

    return result.final_output

if __name__ == "__main__":
    asyncio.run(main())