#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
#    Copyright (c) 2003-2019 Aspose Pty Ltd
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
    class TestFile
        attr_accessor :file_name;
        attr_accessor :folder;
        attr_accessor :password;
        
        def path
            folder + file_name
        end

        def file_info
            info = FileInfo.new
            info.file_path = path
            info.password = password
            info
        end        

        def self.not_exist
            f = TestFile.new
            f.file_name = "notexist.docx"
            f.folder = "some-folder\\"
            f
        end

        def self.four_pages_docx
            f = TestFile.new
            f.file_name = "four-pages.docx"
            f.folder = "WordProcessing\\"
            f
        end

        def self.password_protected_docx
            f = TestFile.new
            f.file_name = "password-protected.docx"
            f.folder = "WordProcessing\\"
            f.password = "password"
            f
        end

        def self.four_sheets_xlsx
            f = TestFile.new
            f.file_name = "four-sheets.xlsx"
            f.folder = "Spreadsheet\\"
            f
        end

        def self.four_sheets_protected_xlsx
            f = TestFile.new
            f.file_name = "four-sheets-protected.xlsx"
            f.folder = "Spreadsheet\\"
            f.password = "password"
            f
        end

        def self.sample_tsv
            f = TestFile.new
            f.file_name = "sample.tsv"
            f.folder = "Spreadsheet\\"
            f
        end

        def self.presentation
            f = TestFile.new
            f.file_name = "with-notes.pptx"
            f.folder = "Presentation\\"
            f
        end

        def self.presentation_with_hidden_slide
            f = TestFile.new
            f.file_name = "with-two-visible-and-one-hidden-slide.odp"
            f.folder = "Presentation\\"
            f
        end 
        
        def self.document_txt
            f = TestFile.new
            f.file_name = "document.txt"
            f.folder = "Text\\"
            f
        end        

        def self.test_files_list
            [
                self.four_pages_docx,
                self.password_protected_docx,
                self.four_sheets_xlsx,
                self.four_sheets_protected_xlsx,
                self.sample_tsv,
                self.presentation,
                self.presentation_with_hidden_slide,
                self.document_txt
            ]        
        end
    end
end