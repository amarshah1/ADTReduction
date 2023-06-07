
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
(assert (and (= l1 l2) (= l1 Nil) (is-Cons Nil) (= l3 l0)) )
(assert (and (is-Cons Nil) (= l0 l3) (= l2 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l1)) )
(assert (= l0 Nil) )
(check-sat)