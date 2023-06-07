
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (is-Cons Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l2) (is-Cons l1) (= l3 l1)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons l1) (= l0 Nil) (= l2 Nil)) )
(check-sat)
