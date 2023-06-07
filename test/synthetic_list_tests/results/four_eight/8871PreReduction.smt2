
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
(assert (is-Nil Nil) )
(assert (not (is-Cons l1)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons Nil) (= l2 l1)) )
(assert (= l3 l2) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l3) (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l0 l1)) )
(check-sat)