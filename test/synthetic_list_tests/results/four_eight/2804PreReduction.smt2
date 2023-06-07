
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
(assert (and (= l2 l3) (is-Nil l1)) )
(assert (= l3 l1) )
(assert (or (= l2 Nil) (is-Cons l1) (is-Nil Nil) (= l3 Nil)) )
(assert (not (is-Cons l1)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l1 l2) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l1)) )
(check-sat)
