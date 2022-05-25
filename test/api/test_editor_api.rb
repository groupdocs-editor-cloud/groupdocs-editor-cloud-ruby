#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2022 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#

module GroupDocsEditorCloud

  require_relative './../test_context'
  require_relative './../test_settings'
  require_relative './../test_file'

  class TestEditorApi < TestContext
    
    include MiniTest::Assertions

    def test_OpenSaveDocx
      # Load
      file = TestFile.four_pages_docx;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end
       
    def test_OpenSaveDocxProtected
      # Load
      file = TestFile.password_protected_docx;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end

    def test_OpenSaveDocxWithOptions
      # Load
      file = TestFile.password_protected_docx;
      
      loadOptions = WordProcessingLoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path
      loadOptions.enable_pagination = true
      loadOptions.font_extraction = "ExtractAll"

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = WordProcessingSaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 
      saveOptions.enable_pagination = true
      saveOptions.format = "Docx"
      saveOptions.password = file.password
      saveOptions.protection_password = file.password
      saveOptions.protection_type = "AllowOnlyComments"

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end

    def test_OpenSaveXlsx
      # Load
      file = TestFile.four_sheets_xlsx;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end    

    def test_OpenSaveXlsxProtected
      # Load
      file = TestFile.four_sheets_protected_xlsx;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 

    def test_OpenSaveXlsxWithOptions
      # Load
      file = TestFile.four_sheets_protected_xlsx;
      
      loadOptions = SpreadsheetLoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path
      loadOptions.exclude_hidden_worksheets = true

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SpreadsheetSaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name
      saveOptions.format = "xlsx"
      saveOptions.password = file.password
      saveOptions.protection_password = file.password
      saveOptions.protection_type = "All"       

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 
    
    def test_OpenSaveTsv
      # Load
      file = TestFile.sample_tsv;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end
    
    def test_OpenSaveTsvWithOptions
      # Load
      file = TestFile.sample_tsv;
      
      loadOptions = DelimitedTextLoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path
      loadOptions.separator = "\t"
      loadOptions.convert_numeric_data = true
      loadOptions.treat_consecutive_delimiters_as_one = true

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = DelimitedTextSaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 
      saveOptions.encoding = "UTF-8"
      saveOptions.format = "tsv"
      saveOptions.keep_separators_for_blank_row = true

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 
    
    def test_OpenSaveText
      # Load
      file = TestFile.document_txt;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end    

    def test_OpenSaveTextWithOptions
      # Load
      file = TestFile.document_txt;
      
      loadOptions = TextLoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path
      loadOptions.enable_pagination = true
      loadOptions.leading_spaces = "Trim"
      loadOptions.recognize_lists = true

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = TextSaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 
      saveOptions.add_bidi_marks = true
      saveOptions.encoding = "UTF-8"
      saveOptions.format = "txt"
      saveOptions.preserve_table_layout = true

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 

    def test_OpenSavePresentation
      # Load
      file = TestFile.presentation;
      
      loadOptions = LoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = SaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 

    def test_OpenSavePresentationWithOptions
      # Load
      file = TestFile.presentation_with_hidden_slide;
      
      loadOptions = PresentationLoadOptions.new
      loadOptions.file_info = file.file_info
      loadOptions.output_path = @output_path
      loadOptions.show_hidden_slides = true
      loadOptions.slide_number = 0

      loadResult = @edit_api.load(LoadRequest.new(loadOptions))
      assert_equal false, loadResult.html_path.empty?
      assert_equal false, loadResult.resources_path.empty?

      # Save
      saveOptions = PresentationSaveOptions.new
      saveOptions.file_info = file.file_info
      saveOptions.html_path = loadResult.html_path
      saveOptions.resources_path = loadResult.resources_path
      saveOptions.output_path = @output_path  + "/" +  file.file_name 
      saveOptions.password = "password"

      saveResult = @edit_api.save(SaveRequest.new(saveOptions))
      assert_equal saveOptions.output_path, saveResult.path
    end 

  end
end
