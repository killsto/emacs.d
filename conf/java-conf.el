(add-to-list 'exec-path "~/apache-maven-3.1.1/bin")


(add-hook 'java-mode-hook 'ggtags-mode)


(add-hook 'java-mode-hook (lambda ()
                            (javadoc-add-artifacts
;                             [commons-logging commons-logging "1.1"]
;                             [commons-logging commons-fileupload "1.1"]
                             [edu.vt.middleware vt-password "3.0"]
                             [edu.vt.middleware vt-dictionary "3.0"])))

