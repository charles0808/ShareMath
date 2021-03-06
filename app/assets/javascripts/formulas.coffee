@setupFormulasList = ->
    MathJax.Hub.Queue(['Typeset', MathJax.Hub, $('.formulas-list .card-formula').toArray()])

@setupFormulaShow = ->
    MathJax.Hub.Queue(['Typeset', MathJax.Hub, $('.formula-show').toArray()])

@setupExpressionEditor = ->
    ExpressionPreview =
        delay: 200
        timeout: null
        preview: document.getElementById('formula-expression-preview')
        buffer: document.getElementById('formula-expression-buffer')
        SwapBuffers: ->
            buffer = @preview
            preview = @buffer
            @buffer = buffer
            @preview = preview
            buffer.style.visibility = 'hidden'
            buffer.style.position = 'absolute'
            preview.style.visibility = ''
            preview.style.position = ''
        Update: (content) ->
            clearTimeout(@timeout)
            if content.length
                content = "$#{content}$"
                $(@buffer).removeClass('preview-placeholder')
                @buffer.innerHTML = content
                MathJax.Hub.Queue(['Typeset', MathJax.Hub, @buffer])
                @timeout = setTimeout((=> @SwapBuffers()), @delay)
            else
                content = '$\\rm\\LaTeX$ Preview'
                $(@buffer).addClass('preview-placeholder')
                @buffer.innerHTML = content
                MathJax.Hub.Queue(['Typeset', MathJax.Hub, @buffer])
                @SwapBuffers()
    editor = ace.edit('formula-expression-editor')
    textarea = $('textarea#formula_expression').hide()
    session = editor.getSession()
    LatexMode = ace.require('ace/mode/latex').Mode
    session.setMode(new LatexMode())
    session.setUseWrapMode(true)
    session.on 'change', ->
        content = session.getValue()
        textarea.val(content)
        ExpressionPreview.Update(content)
    session.setValue(textarea.val())
    ExpressionPreview.Update(textarea.val())

@setupContentEditor = ->
    ContentPreview =
        delay: 300
        timeout: null
        preview: document.getElementById('formula-content-preview')
        Markdown: ->
            text = @preview.innerHTML;
            text = text.replace(/^&gt;/mg, '>')
            @preview.innerHTML = marked(text)
        Render: (content) ->
            @preview.innerHTML = @Escape(content)
            MathJax.Hub.Queue(
                ['Typeset', MathJax.Hub, @preview],
                ['Markdown', @],
                ['resetEquationNumbers', MathJax.InputJax.TeX]
            )
            marked(content)
        Update: (content) ->
            clearTimeout(@timeout)
            @timeout = setTimeout((=> @Render(content)), @delay)
        Escape: (html, encode) ->
            html.replace(!encode && /&(?!#?\w+;)/g || /&/g, '&amp;')
                .replace(/</g, '&lt;')
                .replace(/>/g, '&gt;')
                .replace(/"/g, '&quot;')
                .replace(/'/g, '&#39;');
    editor = ace.edit('formula-content-editor')
    textarea = $('textarea#formula_content').hide()
    session = editor.getSession()
    MarkdownMode = ace.require('ace/mode/markdown').Mode
    session.setMode(new MarkdownMode())
    session.setUseWrapMode(true)
    session.on 'change', ->
        content = session.getValue()
        textarea.val(content)
        ContentPreview.Update(content)
    session.setValue(textarea.val())

