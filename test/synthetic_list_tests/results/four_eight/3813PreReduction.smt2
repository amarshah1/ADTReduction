
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
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (= l2 Nil) (= l2 l2)) )
(assert (and (is-Cons Nil) (= l3 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (is-Nil l0)) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
