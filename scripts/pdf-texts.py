## HEADER ####
## Who: Georgina Wager
## What: converting the pdfs to text 
## when: 2024-02-16 

# Install the pdfminer.six library which is used for extracting text from PDFs
!pip install --upgrade pdfminer.six

# Import the necessary function from the pdfminer.six library
from pdfminer.high_level import extract_text_to_fp
import os

# Define the path to the folder containing the PDF files
folder_path = 'D:\\OneDrive - Harper Adams University\\Documents\\modern-slavery-grant\\web-scraping\\data\\other'  # Replace with your folder path

# Define a function to convert PDFs to text files
def pdfs_to_text(folder_path):
    # Loop through all files in the specified folder
    for filename in os.listdir(folder_path):
        # Check if the current file has a .pdf extension
        if filename.endswith('.pdf'):
            # Construct the full path to the PDF file
            pdf_path = os.path.join(folder_path, filename)
            # Construct the full path to the output text file (same name but with .txt extension)
            txt_path = os.path.join(folder_path, os.path.splitext(filename)[0] + '.txt')

            try:
                # Open the output text file for writing with UTF-8 encoding
                with open(txt_path, 'w', encoding='utf-8') as txt_file:
                    # Extract text from the PDF and write it to the text file
                    extract_text_to_fp(open(pdf_path, 'rb'), txt_file)
            except Exception as e:
                # Print an error message if something goes wrong
                print(f"Error processing file {filename}: {str(e)}")

# Call the function to convert all PDFs in the specified folder to text files
pdfs_to_text(folder_path)
