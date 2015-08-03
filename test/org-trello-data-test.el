(require 'org-trello-data)
(require 'ert)
(require 'el-mock)

(ert-deftest test-orgtrello-data-entity-getter ()
  (should (equal "test" (orgtrello-data-entity-buffername   (orgtrello-hash-make-properties `((:buffername   . "test"))))))
  (should (equal nil (orgtrello-data-entity-buffername      (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-position     (orgtrello-hash-make-properties `((:position     . "test"))))))
  (should (equal nil (orgtrello-data-entity-position        (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-id           (orgtrello-hash-make-properties `((:id           . "test"))))))
  (should (equal nil (orgtrello-data-entity-id              (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-name         (orgtrello-hash-make-properties `((:name         . "test"))))))
  (should (equal nil (orgtrello-data-entity-name            (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-list-id      (orgtrello-hash-make-properties `((:list-id      . "test"))))))
  (should (equal nil (orgtrello-data-entity-list-id         (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-checklists   (orgtrello-hash-make-properties `((:checklists   . "test"))))))
  (should (equal nil (orgtrello-data-entity-checklists      (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-items        (orgtrello-hash-make-properties `((:items        . "test"))))))
  (should (equal nil (orgtrello-data-entity-items           (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-card-id      (orgtrello-hash-make-properties `((:card-id      . "test"))))))
  (should (equal nil (orgtrello-data-entity-card-id         (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-due          (orgtrello-hash-make-properties `((:due          . "test"))))))
  (should (equal nil (orgtrello-data-entity-due             (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-keyword      (orgtrello-hash-make-properties `((:keyword      . "test"))))))
  (should (equal nil (orgtrello-data-entity-keyword         (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-closed       (orgtrello-hash-make-properties `((:closed       . "test"))))))
  (should (equal nil (orgtrello-data-entity-closed          (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-callback     (orgtrello-hash-make-properties `((:callback     . "test"))))))
  (should (equal nil (orgtrello-data-entity-callback        (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-sync         (orgtrello-hash-make-properties `((:sync         . "test"))))))
  (should (equal nil (orgtrello-data-entity-sync            (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-level        (orgtrello-hash-make-properties `((:level        . "test"))))))
  (should (equal nil (orgtrello-data-entity-level           (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-method       (orgtrello-hash-make-properties `((:method       . "test"))))))
  (should (equal nil (orgtrello-data-entity-method          (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-uri          (orgtrello-hash-make-properties `((:uri          . "test"))))))
  (should (equal nil (orgtrello-data-entity-uri             (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-params       (orgtrello-hash-make-properties `((:params       . "test"))))))
  (should (equal nil (orgtrello-data-entity-params          (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-start        (orgtrello-hash-make-properties `((:start        . "test"))))))
  (should (equal nil (orgtrello-data-entity-start           (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-action       (orgtrello-hash-make-properties `((:action       . "test"))))))
  (should (equal nil (orgtrello-data-entity-action          (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-comments     (orgtrello-hash-make-properties `((:comments     . "test"))))))
  (should (equal nil (orgtrello-data-entity-comments        (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-comment-id   (orgtrello-hash-make-properties `((:comment-id   . "test"))))))
  (should (equal nil (orgtrello-data-entity-comment-id      (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-comment-text (orgtrello-hash-make-properties `((:comment-text . "test"))))))
  (should (equal nil (orgtrello-data-entity-comment-text    (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-comment-user (orgtrello-hash-make-properties `((:comment-user . "test"))))))
  (should (equal nil (orgtrello-data-entity-comment-user    (orgtrello-hash-make-properties `((inexistant    . "test"))))))
  (should (equal "test" (orgtrello-data-entity-color        (orgtrello-hash-make-properties `((:color        . "test"))))))
  (should (equal nil (orgtrello-data-entity-color           (orgtrello-hash-make-properties `((inexistant    . "test")))))))

(ert-deftest test-orgtrello-data-entity-method ()
  (should (equal :some-method (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:method . :some-method ))))))
  (should (equal nil (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:inexistant . :some-method ))))))
  (should (equal :some-uri (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:method . :some-uri ))))))
  (should (equal nil (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:inexistant . :some-method ))))))
  (should (equal :some-sync (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:method . :some-sync ))))))
  (should (equal nil (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:inexistant . :some-method ))))))
  (should (equal :some-params (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:method . :some-params ))))))
  (should (equal nil (orgtrello-data-entity-method (orgtrello-hash-make-properties `((:inexistant . :some-method )))))))

(ert-deftest test-orgtrello-data--entity-with-level-p ()
  (should (equal nil (orgtrello-data--entity-with-level-p nil 1)))
  (should (equal t   (orgtrello-data--entity-with-level-p (orgtrello-hash-make-properties `((:level . ,org-trello--card-level))) org-trello--card-level)))
  (should (equal nil (orgtrello-data--entity-with-level-p (orgtrello-hash-make-properties `((:level . ,org-trello--checklist-level))) org-trello--card-level))))

(ert-deftest test-orgtrello-data-entity-card-p ()
  (should (equal t   (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((:level . ,org-trello--card-level))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((:level . ,org-trello--checklist-level))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((idList . 1))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((id . 1))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((:list-id . "this is a card"))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((anything-else . "this is not a card")))))))

(ert-deftest test-orgtrello-data-entity-checklist-p ()
  (should (equal t   (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((:level . ,org-trello--checklist-level))))))
  (should (equal nil (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((:level . ,org-trello--item-level))))))
  (should (equal nil (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((idCard . 1))))))
  (should (equal nil (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((id . 1))))))
  (should (equal nil (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((:card-id . "this is a checklist"))))))
  (should (equal nil (orgtrello-data-entity-checklist-p (orgtrello-hash-make-properties `((anything-else . "this is not a checklist")))))))

(ert-deftest test-orgtrello-data-entity-item-p ()
  (should (equal t   (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((:level . ,org-trello--item-level))))))
  (should (equal nil (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((:checked . "this is an item"))))))
  (should (equal nil (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((anything-else . "this is not a item"))))))
  (should (equal nil (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((:level . ,org-trello--card-level))))))
  (should (equal nil (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((:state . 1))))))
  (should (equal nil (orgtrello-data-entity-item-p (orgtrello-hash-make-properties `((id . 1)))))))

(ert-deftest test-orgtrello-data-merge-2-lists-without-duplicates ()
  (should (equal '(1 2 3 4) (orgtrello-data-merge-2-lists-without-duplicates '(1 2 3) '(4 1 2))))
  (should (equal '(4 1 2)   (orgtrello-data-merge-2-lists-without-duplicates nil '(4 1 2))))
  (should (equal '(4 1 2)   (orgtrello-data-merge-2-lists-without-duplicates '(4 1 2) nil)))
  (should (equal nil        (orgtrello-data-merge-2-lists-without-duplicates nil nil))))

(ert-deftest test-orgtrello-data-entity-card-p ()
  (should (equal t (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((:level . ,org-trello--card-level))))))
  (should (equal nil (orgtrello-data-entity-card-p (orgtrello-hash-make-properties `((:level . ,org-trello--checklist-level)))))))

(ert-deftest test-orgtrello-data--compute-level ()
  (should (equal org-trello--card-level      (orgtrello-data--compute-level (orgtrello-hash-make-properties '((:list-id . 0))))))
  (should (equal org-trello--checklist-level (orgtrello-data--compute-level (orgtrello-hash-make-properties '((:card-id . 0))))))
  (should (equal org-trello--item-level      (orgtrello-data--compute-level (orgtrello-hash-make-properties '((:checked . 0))))))
  (should (equal nil               (orgtrello-data--compute-level (orgtrello-hash-make-properties '())))))

(ert-deftest test-orgtrello-data-parse-data-card ()
  ;; check card
  (should (orgtrello-tests-hash-equal (orgtrello-hash-make-properties `((:url . "https://trello.com/c/9XPLuJhi/2515-joy-of-fun-ctional-languages")
                                                                        (:name . "Joy of FUN(ctional) LANGUAGES")
                                                                        (:level . 1)
                                                                        (:member-ids . (1 2 3))
                                                                        (:checklists . (4 5 6))
                                                                        (:list-id . "51d99bbc1e1d8988390047f3")
                                                                        (:desc . "some-desc")
                                                                        (:board-id . "51d99bbc1e1d8988390047f2")
                                                                        (:closed . nil)
                                                                        (:id . "52c09056d84eeca156001a24")
                                                                        (:due . "some-due-date")
                                                                        (:position . "98304")))

                                      (orgtrello-data-parse-data '((url . "https://trello.com/c/9XPLuJhi/2515-joy-of-fun-ctional-languages")
                                                                   (shortUrl . "https://trello.com/c/9XPLuJhi")
                                                                   (pos . "98304")
                                                                   (name . "Joy of FUN(ctional) LANGUAGES")
                                                                   (manualCoverAttachment . :json-false)
                                                                   (idAttachmentCover)
                                                                   (idShort . 2515)
                                                                   (idMembers . [1 2 3])
                                                                   (idList . "51d99bbc1e1d8988390047f3")
                                                                   (idChecklists . [4 5 6])
                                                                   (idBoard . "51d99bbc1e1d8988390047f2")
                                                                   (due . "some-due-date")
                                                                   (descData (emoji))
                                                                   (desc . "some-desc")
                                                                   (dateLastActivity . "2013-12-29T21:12:54.164Z")
                                                                   (closed . :json-false)
                                                                   (checkItemStates . [])
                                                                   (badges (due)
                                                                           (description . :json-false)
                                                                           (attachments . 0)
                                                                           (comments . 0)
                                                                           (checkItemsChecked . 0)
                                                                           (checkItems . 0)
                                                                           (fogbugz)
                                                                           (subscribed . :json-false)
                                                                           (viewingMemberVoted . :json-false)
                                                                           (votes . 0))
                                                                   (id . "52c09056d84eeca156001a24"))))))

(ert-deftest test-orgtrello-data-parse-data-checklist ()
  ;; check checklist
  (should (orgtrello-tests-hash-equal (orgtrello-hash-make-properties `((:items . ())
                                                                        (:name . "LISP family")
                                                                        (:level . 2)
                                                                        (:id . "52c0a36886b7bdd67c008cf1")
                                                                        (:card-id . "52c09056d84eeca156001a24")
                                                                        (:board-id . "51d99bbc1e1d8988390047f2")
                                                                        (:id . "52c0a36886b7bdd67c008cf1")
                                                                        (:position . 16384)))
                                      (orgtrello-data-parse-data '((checkItems . [])
                                                                   (pos . 16384)
                                                                   (idCard . "52c09056d84eeca156001a24")
                                                                   (idBoard . "51d99bbc1e1d8988390047f2")
                                                                   (name . "LISP family")
                                                                   (id . "52c0a36886b7bdd67c008cf1"))))))

(ert-deftest test-orgtrello-data-parse-data-item ()
  (should (orgtrello-tests-hash-equal
           (orgtrello-hash-make-properties `((:name . "Emacs-Lisp")
                                             (:level . 3)
                                             (:id . "52c0a64cfb34123369015393")
                                             (:checked . "complete")
                                             (:position . 16384)))
           (orgtrello-data-parse-data '((pos . 16384)
                                        (nameData (emoji))
                                        (name . "Emacs-Lisp")
                                        (id . "52c0a64cfb34123369015393")
                                        (state . "complete")))))
  (should (orgtrello-tests-hash-equal
           (orgtrello-hash-make-properties `((:name . "Emacs-Lisp")
                                             (:level . 3)
                                             (:id . "52c0a64cfb34123369015393")
                                             (:checked . "incomplete")
                                             (:position . 16384)))
           (orgtrello-data-parse-data '((pos . 16384)
                                        (nameData (emoji))
                                        (name . "Emacs-Lisp")
                                        (id . "52c0a64cfb34123369015393")
                                        (state . "incomplete"))))))

(ert-deftest test-orgtrello-data-parse-data-http-response ()
  (should (orgtrello-tests-hash-equal
           (orgtrello-hash-make-properties `((:status . ok)))
           (orgtrello-data-parse-data '((status . ok))))))

(ert-deftest test-orgtrello-data-parse-data-with-list-of-results ()
  (let ((list-hash (orgtrello-data-parse-data '[((shortUrl . "https://trello.com/b/o9oY3NlQ")
                                                 (dateLastView . "2013-08-08T14:07:03.382Z")
                                                 (dateLastActivity)
                                                 (powerUps . [])
                                                 (subscribed . :json-false)
                                                 (shortLink . "o9oY3NlQ")
                                                 (invitations . [])
                                                 (prefs
                                                  (canInvite . t)
                                                  (canBePrivate . t)
                                                  (canBeOrg . t)
                                                  (canBePublic . t)
                                                  (bg . "blue")
                                                  (backgroundBrightness . "unknown")
                                                  (backgroundTile . :json-false)
                                                  (backgroundImageScaled)
                                                  (backgroundImage)
                                                  (backgroundColor . "#205C7E")
                                                  (cardCovers . t)
                                                  (selfJoin . :json-false)
                                                  (invitations . "members")
                                                  (comments . "members")
                                                  (voting . "disabled")
                                                  (permissionLevel . "private"))
                                                 (url . "https://trello.com/b/o9oY3NlQ/1-board-to-rule-them-all")
                                                 (pinned . t)
                                                 (invited . :json-false)
                                                 (idOrganization)
                                                 (closed . t)
                                                 (descData)
                                                 (desc . "")
                                                 (name . "1-board-to-rule-them-all")
                                                 (id . "5203a4fd0ac2f5b75c001d1d"))
                                                ((shortUrl . "https://trello.com/b/xzOJmxzy")
                                                 (dateLastView . "2013-04-15T09:58:13.992Z")
                                                 (dateLastActivity)
                                                 (powerUps .
                                                           [])
                                                 (subscribed . :json-false)
                                                 (shortLink . "xzOJmxzy")
                                                 (invitations . [])
                                                 (prefs
                                                  (canInvite . t)
                                                  (canBePrivate . t)
                                                  (canBeOrg . t)
                                                  (canBePublic . t)
                                                  (bg . "blue")
                                                  (backgroundBrightness . "unknown")
                                                  (backgroundTile . :json-false)
                                                  (backgroundImageScaled)
                                                  (backgroundImage)
                                                  (backgroundColor . "#205C7E")
                                                  (cardCovers . t)
                                                  (selfJoin . :json-false)
                                                  (invitations . "members")
                                                  (comments . "members")
                                                  (voting . "disabled")
                                                  (permissionLevel . "org"))
                                                 (url . "https://trello.com/b/xzOJmxzy/demandes-infra")
                                                 (pinned . t)
                                                 (invited . :json-false)
                                                 (idOrganization . "5044ce9d5371b0384813bba6")
                                                 (closed . t)
                                                 (descData)
                                                 (desc . "")
                                                 (name . "Demandes Infra")
                                                 (id . "50aa59502ddab2fc1100115b"))])))
    (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                                      (:url "https://trello.com/b/o9oY3NlQ/1-board-to-rule-them-all" :closed t :desc "" :name "1-board-to-rule-them-all" :id "5203a4fd0ac2f5b75c001d1d"))
                                        (car list-hash)))
    (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                                      (:url "https://trello.com/b/xzOJmxzy/demandes-infra" :closed t :desc "" :name "Demandes Infra" :id "50aa59502ddab2fc1100115b"))
                                        (cadr list-hash)))))

(ert-deftest test-orgtrello-data-parse-data ()
  "With nested assoc list."
  (defvar actual-result)
  (setq actual-result (orgtrello-data-parse-data '((checkItems . [((pos . 16384)
                                                                   (nameData)
                                                                   (name . "introduction")
                                                                   (id . "52c0b537ad469b9d6d044fa1")
                                                                   (state . "incomplete"))
                                                                  ((pos . 32768)
                                                                   (nameData)
                                                                   (name . "Ch. 1 - A scalable language")
                                                                   (id . "52c0b5386548fde20105ea4e")
                                                                   (state . "incomplete"))])
                                                   (idCard . "52c0b529bdbf2ab3770570b7")
                                                   (idBoard . "51d99bbc1e1d8988390047f2")
                                                   (name .  "chapters")
                                                   (id .  "52c0b52ece09f28f6801fe5e")
                                                   (level . 2))))
  (should (equal "52c0b529bdbf2ab3770570b7" (orgtrello-data-entity-card-id actual-result)))
  (should (equal "51d99bbc1e1d8988390047f2" (orgtrello-data-entity-board-id actual-result)))
  (should (equal "chapters" (orgtrello-data-entity-name actual-result)))
  (should (equal 2 (orgtrello-data-entity-level actual-result)))
  (should (equal "52c0b52ece09f28f6801fe5e" (orgtrello-data-entity-id actual-result)))
  (should (equal 2 (length (orgtrello-data-entity-items actual-result))))
  (should (equal t (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:position 16384 :name "introduction" :id "52c0b537ad469b9d6d044fa1" :checked "incomplete" :level 3))
                                               (car (orgtrello-data-entity-items actual-result)))))
  (should (equal t (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:position 32768 :name "Ch. 1 - A scalable language" :id "52c0b5386548fde20105ea4e" :checked "incomplete" :level 3))
                                               (cadr (orgtrello-data-entity-items actual-result))))))

(ert-deftest test-orgtrello-data--deal-with-key ()
  (should (equal :keyword (orgtrello-data--deal-with-key :keyword)))
  (should (equal :name    (orgtrello-data--deal-with-key 'name)))
  (should (equal nil      (orgtrello-data--deal-with-key 'something-that-does-not-exist))))

(ert-deftest orgtrello-tests-hash-equal ()
  (should (equal t (orgtrello-tests-hash-equal
                    #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                  (url :url id :id name :name idMembers :member-ids idList :list-id checklists :checklists idChecklists :checklists idBoard :board-id due :due desc :desc closed :closed idCard :card-id checkItems :items state :checked status :status pos :position keyword :keyword member-ids :member-ids member :member memberships :memberships username :username fullName :full-name actions :comments labelNames :labels lists :lists red :red yellow :yellow blue :blue green :green orange :orange purple :purple labels :labels color :color))
                    orgtrello-controller--data-map-keywords))))

(ert-deftest test-orgtrello-data--dispatch-parse-data-fn ()
  (should (equal 'orgtrello-data--parse-actions (orgtrello-data--dispatch-parse-data-fn ':comments)))
  (should (equal 'orgtrello-data-parse-data (orgtrello-data--dispatch-parse-data-fn ':something-else))))

(defvar partial-data-to-test '[((memberCreator (username . "ardumont")
                                               (initials . "AD")
                                               (fullName . "Antoine R. Dumont")
                                               (avatarHash . "ff242a6fbf51ccf70e4760b23e194bca")
                                               (id . "4f2baa2f72b7c1293501cad3"))
                                (date . "2014-03-22T11:30:15.358Z")
                                (type . "commentCard")
                                (data
                                 (text . "comment 4")
                                 (card
                                  (id . "532d6fd99e39209f27ab2d61")
                                  (name . "Joy of FUN(ctional) LANGUAGES")
                                  (idShort . 2733)
                                  (shortLink . "otLncD1l"))
                                 (board
                                  (id . "51d99bbc1e1d8988390047f2")
                                  (name . "api test board")
                                  (shortLink . "6JSsg3aG")))
                                (idMemberCreator . "4f2baa2f72b7c1293501cad3")
                                (id . "532d7447b247e3d24f365309"))
                               ((memberCreator
                                 (username . "ardumont")
                                 (initials . "AD")
                                 (fullName . "Antoine R. Dumont")
                                 (avatarHash . "ff242a6fbf51ccf70e4760b23e194bca")
                                 (id . "4f2baa2f72b7c1293501cad3"))
                                (date . "2014-03-22T11:30:09.927Z")
                                (type . "commentCard")
                                (data
                                 (text . "comment 3")
                                 (card
                                  (id . "532d6fd99e39209f27ab2d61")
                                  (name . "Joy of FUN(ctional) LANGUAGES")
                                  (idShort . 2733)
                                  (shortLink . "otLncD1l"))
                                 (board
                                  (id . "51d99bbc1e1d8988390047f2")
                                  (name . "api test board")
                                  (shortLink . "6JSsg3aG")))
                                (idMemberCreator . "4f2baa2f72b7c1293501cad3")
                                (id . "532d7441852414f343560757"))])

(ert-deftest test-orgtrello-data--parse-actions ()
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:comment-id "532d7447b247e3d24f365309" :comment-text "comment 4" :comment-date "2014-03-22T11:30:15.358Z" :comment-user "ardumont"))
           (car (orgtrello-data--parse-actions partial-data-to-test))))
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:comment-id "532d7441852414f343560757" :comment-text "comment 3" :comment-date "2014-03-22T11:30:09.927Z" :comment-user "ardumont"))
           (cadr (orgtrello-data--parse-actions partial-data-to-test)))))

(ert-deftest test-orgtrello-data-format-labels ()
  (should (equal ":red: some label\n\n:yellow: some other label"
                 (orgtrello-data-format-labels '((":red" . "some label") (":yellow" . "some other label"))))))

(ert-deftest test-orgtrello-data-id-p ()
  (should (equal t   (orgtrello-data-id-p "anything-that-does-not-start-with-orgtrello-marker")))
  (should (equal t   (orgtrello-data-id-p "agfgdsfgbdfgbdfgbdfshouldbetrue")))
  (should (equal t   (orgtrello-data-id-p "orgtrello-markeragfgdsfgbdfgbdfgbdfshouldbetrue")))
  (should (equal t   (orgtrello-data-id-p "should-be-true-orgtrello-marker-agfgdsfgbdfgbdfgbdf")))
  (should (equal nil (orgtrello-data-id-p "orgtrello-marker-shouldbenil")))
  (should (equal nil (orgtrello-data-id-p nil))))

(ert-deftest test-orgtrello-data-merge-item ()
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:name "some name" :keyword "IN-PROGRESS" :id "1232" :level 3))
           (orgtrello-data-merge-item (orgtrello-hash-make-properties `((:name . "some name") (:keyword . "IN-PROGRESS") (:id . "1232") (:level . 3)))
                                      (orgtrello-hash-make-properties `((:name . "some other name") (:keyword "TODO")))))))

(ert-deftest test-orgtrello-data--compute-state-item-checkbox ()
  (should (equal "[X]" (orgtrello-data--compute-state-item-checkbox "complete")))
  (should (equal "[ ]" (orgtrello-data--compute-state-item-checkbox "incomplete"))))

(ert-deftest test-orgtrello-data--merge-checklist ()
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:name "some name" :id nil :level 2))
           (orgtrello-data--merge-checklist (orgtrello-hash-make-properties `((:id . nil) (:name . "some name") (:level . 2)))
                                             (orgtrello-hash-make-properties `((:name . "some other name")))))))

(ert-deftest test-orgtrello-data--merge-card ()
  (should (orgtrello-tests-hash-equal
           (orgtrello-hash-make-properties `((:name . "some other name")
                                             (:unknown-properties . :something)))
           (orgtrello-data--merge-card nil
                                        (orgtrello-hash-make-properties `((:name . "some other name")
                                                                          (:unknown-properties . :something))))))
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:name "some name" :tags nil :comments nil :level 1 :id "123" :keyword nil :member-ids "" :desc nil :due nil :unknown-properties :something))
           (orgtrello-data--merge-card (orgtrello-hash-make-properties '((:id . "123") (:name . "some name") (:idList . 1) (:level . 1)))
                                        (orgtrello-hash-make-properties '((:name . "some other name")
                                                                          (:unknown-properties . :something))))))
  (should (let ((org-trello--hmap-users-id-name #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("user-dude-id" "orgtrello-user-dude"
                                                                                                                            "user-ardumont-id" "orgtrello-user-ardumont"
                                                                                                                            "ardumont" "orgtrello-user-me"))))
            (orgtrello-tests-hash-equal
             #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                           (:name "some name"
                                  :tags ":red:green:"
                                  :comments "some comments"
                                  :level 1
                                  :id "123"
                                  :keyword "TODO"
                                  :member-ids "orgtrello-user-ardumont,orgtrello-user-dude"
                                  :desc "some description"
                                  :due "some due date"))
             (orgtrello-data--merge-card
              (orgtrello-hash-make-properties `((:id . "123")
                                                (:name . "some name")
                                                (:keyword . "TODO")
                                                (:comments . "some comments")
                                                (:member-ids . "user-ardumont-id,user-dude-id")
                                                (:desc . "some description")
                                                (:due . "some due date")
                                                (:tags . ":red:green:")
                                                (:level . 1)))
              (orgtrello-hash-make-properties '((:name . "some other name")))))))

  (should (let ((org-trello--hmap-users-id-name #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("user-dude-id" "orgtrello-user-dude"
                                                                                                                            "user-ardumont-id" "orgtrello-user-ardumont"
                                                                                                                            "ardumont" "orgtrello-user-me"))))
            (orgtrello-tests-hash-equal
             #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                           (:name "some name"
                                  :tags ":other-stuff:not-trello-flag:reg:green:"
                                  :comments "some comments"
                                  :level 1
                                  :id "123"
                                  :keyword "TODO"
                                  :member-ids "orgtrello-user-ardumont,orgtrello-user-dude"
                                  :desc "some description"
                                  :due "some due date"))
             (orgtrello-data--merge-card
              (orgtrello-hash-make-properties `((:id . "123")
                                                (:name . "some name")
                                                (:keyword . "TODO")
                                                (:comments . "some comments")
                                                (:member-ids . "user-ardumont-id,user-dude-id")
                                                (:desc . "some description")
                                                (:due . "some due date")
                                                (:tags . ":reg:green:")
                                                (:level . 1)))
              (orgtrello-hash-make-properties '((:name . "some other name")
                                                (:tags . ":other-stuff:not-trello-flag:")
                                                (:member-ids . "user-ardumont-id"))))))))

(ert-deftest test-orgtrello-data--merge-member-ids ()
  (let ((org-trello--hmap-users-id-name #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("1" "user1"
                                                                                                                    "2" "user2"
                                                                                                                    "3" "user3"
                                                                                                                    "4" "user4"
                                                                                                                    "5" "user5"))))
    (should (equal "user1,user5,user2,user3,user4"
                   (orgtrello-data--merge-member-ids (orgtrello-hash-make-properties `((:member-ids . "1,5")))
                                                      (orgtrello-hash-make-properties `((:member-ids . "2,3,4"))))))
    (should (equal "user2,user3,user4"
                   (orgtrello-data--merge-member-ids (orgtrello-hash-make-properties `((:member-ids . nil)))
                                                      (orgtrello-hash-make-properties `((:member-ids . "2,3,4"))))))
    (should (equal "user1"
                   (orgtrello-data--merge-member-ids (orgtrello-hash-make-properties `((:member-ids . "1")))
                                                      (orgtrello-hash-make-properties `((:member-ids . nil))))))))

(ert-deftest test-orgtrello-data--compute-state-generic ()
  (should (equal "DONE" (orgtrello-data--compute-state-generic "complete" '("DONE" "TODO"))))
  (should (equal "TODO" (orgtrello-data--compute-state-generic "incomplete" '("DONE" "TODO"))))
  (should (equal "DONE" (orgtrello-data--compute-state-generic "DONE" '("DONE" "TODO"))))

  (should (equal "[X]" (orgtrello-data--compute-state-generic "complete" '("[X]" "[-]"))))
  (should (equal "[-]" (orgtrello-data--compute-state-generic "incomplete" '("[X]" "[-]"))))
  (should (equal "[X]" (orgtrello-data--compute-state-generic "DONE" '("[X]" "[-]")))))

(ert-deftest test-orgtrello-data--users-from ()
  (should (equal '("a" "b" "c") (orgtrello-data--users-from "a,b,c,,")))
  (should (equal '() (orgtrello-data--users-from ",,,")))
  (should (equal '() (orgtrello-data--users-from "")))
  (should (equal '() (orgtrello-data--users-from nil))))

(ert-deftest test-orgtrello-data--users-to ()
  (should (equal "" (orgtrello-data--users-to nil)))
  (should (equal "a,b,c," (orgtrello-data--users-to '("a" "b" "c" "")))))

(ert-deftest test-orgtrello-data--merge-labels-as-tags ()
  (should (equal ":trello-labels:"                    (orgtrello-data--merge-labels-as-tags ":trello-labels:" nil)))
  (should (equal ":org-tags:trello-labels:"           (orgtrello-data--merge-labels-as-tags ":trello-labels:" ":org-tags:")))
  (should (equal ":red:org-tags:howto:trello-labels:" (orgtrello-data--merge-labels-as-tags ":trello-labels:red:" ":red:org-tags:howto:"))))

(ert-deftest test-orgtrello-data--from-tags-to-list ()
  (should (equal '("a" "b" "c") (orgtrello-data--from-tags-to-list ":a:b:c:"))))

(ert-deftest test-orgtrello-data--labels-hash-to-tags ()
  (should (equal ":red:" (orgtrello-data--labels-hash-to-tags        (list (orgtrello-hash-make-properties '((:color . "red")))))))
  (should (equal ":red:yellow:" (orgtrello-data--labels-hash-to-tags (list (orgtrello-hash-make-properties '((:color . "red")))
                                                                            (orgtrello-hash-make-properties '((:color . "yellow"))))))))
(ert-deftest test-orgtrello-data--labels-to-tags ()
  (should (equal nil (orgtrello-data--labels-to-tags nil)))
  (should (equal ":a:b:c:" (orgtrello-data--labels-to-tags '("a" "b" "c")))))

(ert-deftest test-orgtrello-data-setters ()
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:name         :value)) (orgtrello-data-put-entity-name         :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:memberships  :value)) (orgtrello-data-put-entity-memberships  :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:member       :value)) (orgtrello-data-put-entity-member       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:username     :value)) (orgtrello-data-put-entity-username     :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:action       :value)) (orgtrello-data-put-entity-action       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:board-id     :value)) (orgtrello-data-put-entity-board-id     :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:card-id      :value)) (orgtrello-data-put-entity-card-id      :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:list-id      :value)) (orgtrello-data-put-entity-list-id      :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:member-ids   :value)) (orgtrello-data-put-entity-member-ids   :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:desc         :value)) (orgtrello-data-put-entity-description  :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:checklists   :value)) (orgtrello-data-put-entity-checklists   :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:items        :value)) (orgtrello-data-put-entity-items        :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:position     :value)) (orgtrello-data-put-entity-position     :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:buffername   :value)) (orgtrello-data-put-entity-buffername   :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:checked      :value)) (orgtrello-data-put-entity-checked      :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:due          :value)) (orgtrello-data-put-entity-due          :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:id           :value)) (orgtrello-data-put-entity-id           :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:level        :value)) (orgtrello-data-put-entity-level        :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:closed       :value)) (orgtrello-data-put-entity-closed       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:callback     :value)) (orgtrello-data-put-entity-callback     :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:start        :value)) (orgtrello-data-put-entity-start        :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comments     :value)) (orgtrello-data-put-entity-comments     :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:labels       :value)) (orgtrello-data-put-entity-labels       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:tags         :value)) (orgtrello-data-put-entity-tags         :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:keyword      :value)) (orgtrello-data-put-entity-keyword      :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comment-id   :value)) (orgtrello-data-put-entity-comment-id   :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comment-text :value)) (orgtrello-data-put-entity-comment-text :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comment-user :value)) (orgtrello-data-put-entity-comment-user :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:method       :value)) (orgtrello-data-put-entity-method       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:uri          :value)) (orgtrello-data-put-entity-uri          :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:sync         :value)) (orgtrello-data-put-entity-sync         :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:params       :value)) (orgtrello-data-put-entity-params       :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:current      :value)) (orgtrello-data-put-current             :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:parent       :value)) (orgtrello-data-put-parent              :value (orgtrello-hash-empty-hash))))
  (should (orgtrello-tests-hash-equal #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:grandparent  :value)) (orgtrello-data-put-grandparent         :value (orgtrello-hash-empty-hash)))))

(ert-deftest test-orgtrello-data-make-hash-org ()
  (should (equal "some name"       (gethash :name           (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal "IN PROGRESS"     (gethash :keyword        (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal 0                 (gethash :level          (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal "some id"         (gethash :id             (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal "due-date"        (gethash :due            (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal :point            (gethash :position       (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal "buffer-name.org" (gethash :buffername     (orgtrello-data-make-hash-org "" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal "1,2,3"           (gethash :member-ids     (orgtrello-data-make-hash-org "1,2,3" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal :desc             (gethash :desc           (orgtrello-data-make-hash-org "1,2,3" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal :tags             (gethash :tags           (orgtrello-data-make-hash-org "1,2,3" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk))))
  (should (equal :unk              (gethash :unknown-properties (orgtrello-data-make-hash-org "1,2,3" 0 "IN PROGRESS" "some name" "some id" "due-date" :point "buffer-name.org" :desc :tags :unk)))))

(ert-deftest test-orgtrello-data-make-hierarchy1 ()
  (should (equal :current (gethash :current (orgtrello-data-make-hierarchy :current))))
  (should (equal nil (gethash :parent (orgtrello-data-make-hierarchy :current))))
  (should (equal nil (gethash :grandparent (orgtrello-data-make-hierarchy :current)))))

(ert-deftest test-orgtrello-data-make-hierarchy2 ()
  (should (equal :current (gethash :current (orgtrello-data-make-hierarchy :current :parent))))
  (should (equal :parent (gethash :parent (orgtrello-data-make-hierarchy :current :parent))))
  (should (equal nil (gethash :grandparent (orgtrello-data-make-hierarchy :current :parent)))))

(ert-deftest test-orgtrello-data-make-hierarchy3 ()
  (should (equal :current (gethash :current (orgtrello-data-make-hierarchy :current :parent :grandparent))))
  (should (equal :parent (gethash :parent (orgtrello-data-make-hierarchy :current :parent :grandparent))))
  (should (equal :grandparent (gethash :grandparent (orgtrello-data-make-hierarchy :current :parent :grandparent)))))

(ert-deftest test-orgtrello-data-make-hierarchy4 ()
  (should (equal :current (gethash :current (orgtrello-data-make-hierarchy :current nil :grandparent))))
  (should (equal nil (gethash :parent (orgtrello-data-make-hierarchy :current nil :grandparent))))
  (should (equal :grandparent (gethash :grandparent (orgtrello-data-make-hierarchy nil :parent :grandparent)))))

(ert-deftest test-orgtrello-data-make-hierarchy5 ()
  (should (equal :ok                                 (-> (orgtrello-data-make-hash-org :users 1 :keyword "some name" :id :due :position :buffer-name :desc :tags :unk)
                                                         orgtrello-data-make-hierarchy
                                                         orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-card-missing-name      (-> (orgtrello-data-make-hash-org :users 1 :keyword "" :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-card-missing-name      (-> (orgtrello-data-make-hash-org :users 1 :keyword nil :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p)))
  (should (equal :ok                                 (-> (orgtrello-data-make-hash-org :users 2 :keyword "some name" :id :due :position :buffer-name :desc :tags :unk)
                                                         orgtrello-data-make-hierarchy
                                                         orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-checklist-missing-name (-> (orgtrello-data-make-hash-org :users 2 :keyword "" :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-checklist-missing-name (-> (orgtrello-data-make-hash-org :users 2 :keyword nil :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p)))
  (should (equal :ok                                 (-> (orgtrello-data-make-hash-org :users 3 :keyword "some name" :id :due :position :buffer-name :desc :tags :unk)
                                                         orgtrello-data-make-hierarchy
                                                         orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-item-missing-name      (-> (orgtrello-data-make-hash-org :users 3 :keyword "" :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p)))
  (should (equal org-trello--error-sync-item-missing-name      (-> (orgtrello-data-make-hash-org :users 3 :keyword nil :id :due :position :buffer-name :desc :tags :unk)
                                                                   orgtrello-data-make-hierarchy
                                                                   orgtrello-controller--mandatory-name-ok-p))))

(ert-deftest test-orgtrello-data-to-org-trello-card ()
  "Convert trello card to org-trello."
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:comments :comments-untouched
                                    :position 884
                                    :name "Joy of FUN(ctional) LANGUAGES"
                                    :member-ids "user-ardumont-id,user-orgmode-id"
                                    :due "2014-09-07T00:00:00.000Z"
                                    :desc "hello description\n- with many\n- lines\n\n- including\n\n- blanks lines\n- lists\n- with start or dash  are now possible\n  - indentation too\n"
                                    :id "card-joy-id"
                                    :level 1
                                    :tags ":orange:blue:"
                                    :keyword "IN-PROGRESS"
                                    :checklists nil
                                    :closed nil
                                    :labels nil
                                    :list-id nil))
           (let* ((org-trello--hmap-users-id-name #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("user-orgmode-id" "orgtrello-user-orgmode"
                                                                                                                              "user-ardumont-id" "orgtrello-user-ardumont"
                                                                                                                              "ardumont" "orgtrello-user-me")))
                  (org-trello--hmap-users-name-id #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("orgtrello-user-orgmode" "user-orgmode-id"
                                                                                                                              "orgtrello-user-ardumont" "user-ardumont-id"
                                                                                                                              "orgtrello-user-me" "ardumont")))
                  (org-trello--user-logged-in "ardumont")
                  (org-trello--hmap-list-orgkeyword-id-name '("TODO" "IN-PROGRESS" "DONE" "PENDING" "DELEGATED" "FAILED" "CANCELLED"))
                  (org-trello--hmap-list-orgkeyword-id-name #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data ("abc" "TODO"
                                                                                                                                        "def" "IN-PROGRESS"
                                                                                                                                        "ghi" "DONE"
                                                                                                                                        "jkl" "PENDING"
                                                                                                                                        "mno" "DELEGATED"
                                                                                                                                        "pqr" "FAILED"
                                                                                                                                        "stu" "CANCELLED")))
                  (trello-card #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                             (:comments :comments-untouched
                                                        ;;  this is the current format
                                                        ;; (#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comment-id "comment-id-0" :comment-text "hello" :comment-user "ardumont" :comment-date "some-date"))
                                                        ;;    #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:comment-id "comment-id-1" :comment-text "dude" :comment-user "ardumont" :comment-date "some-date")))
                                                        :position 884
                                                        :name "Joy of FUN(ctional) LANGUAGES"
                                                        :labels (#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:name "range" :color "orange"))
                                                                   #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data (:name "blue" :color "blue")))
                                                        :member-ids ("user-ardumont-id" "user-orgmode-id")
                                                        :list-id "def"
                                                        :due "2014-09-07T00:00:00.000Z"
                                                        :desc "hello description\n- with many\n- lines\n\n- including\n\n- blanks lines\n- lists\n- with start or dash  are now possible\n  - indentation too\n"
                                                        :closed nil
                                                        :id "card-joy-id"
                                                        :level 1))))
             (orgtrello-data-to-org-trello-card trello-card)))))

(ert-deftest test-orgtrello-data-to-org-trello-checklist ()
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:position 32768
                                    :card-id "card-joy-id"
                                    :board-id "board-id"
                                    :name "hybrid family"
                                    :id "checklist-hybrid-id"
                                    :level 2
                                    :items nil))
           (let ((trello-checklist #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                                 (:position 32768
                                                            :card-id "card-joy-id"
                                                            :board-id "board-id"
                                                            :name "hybrid family"
                                                            :id "checklist-hybrid-id"))))
             (orgtrello-data-to-org-trello-checklist trello-checklist)))))

(ert-deftest test-orgtrello-data-to-org-trello-item ()
  (should (orgtrello-tests-hash-equal
           #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                         (:position 2128
                                    :name "Scala"
                                    :id "scala-id"
                                    :keyword "DONE"
                                    :level 3
                                    :checked nil))
           (let ((trello-item #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8 data
                                            (:position 2128
                                                       :name "Scala"
                                                       :id "scala-id"
                                                       :checked "complete"))))
             (orgtrello-data-to-org-trello-item trello-item)))))

(provide 'org-trello-data-tests)
;;; org-trello-data-tests.el ends here
